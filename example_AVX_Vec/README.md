

vectors/cols = um[0]um[1]um[2]  ||  um[3]um[4]um[5] || um[6]um[7]um[8]     

## Single  MVM inverse Computation   
chi[0]  =  psi[0]  *  um[0]   
           psi[1]  *  um[3]   
           psi[2]  *  um[6]   


chi[1]  =  psi[0]  *  um[1]    
           psi[1]  *  um[4]    
           psi[2]  *  um[7]    


chi[2]  =  psi[0]  *  um[2]    
           psi[1]  *  um[5]    
           psi[2]  *  um[8]    

**Need to reshuffle and get following vectors:**    

vec1 = um[0] um[3] = (1.0 + 2.0 * I) (2.0 + 1.0 * I)  
vec2 = um[1] um[4] = (3.0 + 4.0 * I) (3.0 + 2.0 * I)   
vec3 = um[2] um[5] (up0_3rd up1_3rd) (5.0 + 6.0 * I)(1.0 + 3.0 * I)   


um0um3[0] = 1.0re  
um0um3[1] = 2.0im   
um0um3[2] = 2.0re  
um0um3[3] = 1.0im  

um1um4[0] = 3.0re   
um1um4[1] = 4.0im   
um1um4[2] = 3.0re  
um1um4[3] = 2.0im   

**after reshuffle for imag and real alternate:**  
um0um3_shuf[0] = 2.0re  
um0um3_shuf[1] = 1.0im  
um0um3_shuf[2] = 1.0re  
um0um3_shuf[3] = 2.0im  

um1um4_shuf[0] = 4.0re   
um1um4_shuf[1] = 3.0im  
um1um4_shuf[2] = 2.0re  
um1um4_shuf[3] = 3.0im  


Column after shuffling:  
psi0_shuf1[0] = 1.0re    
psi0_shuf1[1] = 1.0im  
psi0_shuf1[2] = 2.0re  
psi0_shuf1[3] = 2.0im  

psi0_shuf2[0] = 4.0re  
psi0_shuf2[1] = 4.0im  
psi0_shuf2[2] = 5.0re  
psi0_shuf2[3] = 5.0im    


**Outputs/Results**   
chi[0] = -26.0re 
chi[0] = 57.0im 
chi[1] = -23.0re 
chi[1] = 83.0im 
chi[2] = -53.0re 
chi[2] = 85.0im  


## Double  MVM inverse Computation  
chi[0]  =  psi[0]  *  um[0]   
           psi[1]  *  um[3]     
           psi[2]  *  um[6]     

chi[1]  =  psi[0]  *  um[1]    
           psi[1]  *  um[4]    
           psi[2]  *  um[7]    

chi[2]  =  psi[0]  *  um[2]    
           psi[1]  *  um[5]    
           psi[2]  *  um[8]   

chi2[0]  = psi[0]  *  um[0]         
           psi[1]  *  um[3]        
           psi[2]  *  um[6]        

chi2[1]  = psi[0]  *  um[1]        
           psi[1]  *  um[4]        
           psi[2]  *  um[7]      

chi2[2]  = psi[0]  *  um[2]      
           psi[1]  *  um[5]      
           psi[2]  *  um[8]  


