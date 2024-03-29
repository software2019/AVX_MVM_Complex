
#include "header.h"

int timeval_subtract(struct timeval *result, struct timeval *x, struct timeval *y)
{
 /* Perform the carry for the later subtraction by updating Y. */
 if (x->tv_usec < y->tv_usec)
 {
  int nsec = (y->tv_usec - x->tv_usec) / 1000000 + 1;
  y->tv_usec -= 1000000 * nsec;
  y->tv_sec += nsec;
 }
 if (x->tv_usec - y->tv_usec > 1000000)
 {
  int nsec = (x->tv_usec - y->tv_usec) / 1000000;
  y->tv_usec += 1000000 * nsec;
  y->tv_sec -= nsec;
 }

 /* Compute the time remaining to wait.  
  *           `tv_usec' is certainly positive. */
 result->tv_sec = x->tv_sec - y->tv_sec;
 result->tv_usec = x->tv_usec - y->tv_usec;

 /* Return 1 if result is negative. */
 return x->tv_sec < y->tv_sec;
}

/* Random number function */
double complex my_rand(const int n)
{
 double complex c;
 c = (double)(rand() % n) / 5 + 0.000001 + (double)(rand() % n) / 5 * I;//%n means return random numbers less than n or 0 to n-1
 return c;
}

void my_init(suNf_vector *psi, suNf_vector *psi2, suNf *up, const int n)
{
 int i;
 for (i = 0; i < 3; i++)
 {
  psi->c[i] = my_rand(n);
  psi2->c[i] = my_rand(n);
 }

 for (i = 0; i < 9; i++)
 {
  up->c[i] = my_rand(n);
 }
}


void error(int test, int no, char *name, char *text)
{
	if(test != 0)
	{
		printf("ERROR, %s:\n%s\n", name, text);
		printf("ERROR, Exiting program...\n");
		if(no < 0)
		{
			exit(0);
		}
		else
		{
			//finalize_process();
			exit(no);
		}
	}
}

/* Memory allocation and aligned */
struct addr_t
{
 char *addr;
 char *true_addr;
 struct addr_t *next;
};

static struct addr_t *first = NULL;

void *amalloc(size_t size, int p)
{
 int shift;
 char *true_addr, *addr;
 unsigned long mask;
 struct addr_t *new;

 if ((size <= 0) || (p < 0))
  return (NULL);

 shift = 1 << p;
 mask = (unsigned long)(shift - 1);

 true_addr = (char *)malloc(size + shift);
 new = (struct addr_t *)malloc(sizeof(*first));

 if ((true_addr == NULL) || (new == NULL))
 {
  free(true_addr);
  free(new);
  return (NULL);
 }

 addr = (char *)(((unsigned long)(true_addr + shift)) & (~mask));
 (*new).addr = addr;
 (*new).true_addr = true_addr;
 (*new).next = first;
 first = new;

#ifdef AMALLOC_MEASURE
 insert((void *)addr, size);
#endif

 return ((void *)(addr));
}

void afree(void *addr)
{
 struct addr_t *p, *q;

#ifdef AMALLOC_MEASURE
 remove(addr);
#endif

 q = NULL;

 for (p = first; p != NULL; p = (*p).next)
 {
  if ((*p).addr == addr)
  {
   if (q != NULL)
    (*q).next = (*p).next;
   else
    first = (*p).next;

   free((*p).true_addr);
   free(p);
   return;
  }

  q = p;
 }
}
