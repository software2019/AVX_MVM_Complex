
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
 c = (double)(rand() % n) / 5 + (double)(rand() % n) / 5 * I; //%n means return random numbers less than n or 0 to n-1
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