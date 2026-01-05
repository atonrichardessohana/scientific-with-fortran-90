
!ATON RICHARD ESSOHANA  $ third-year physics undergraduate student at university of lome (TOGO)
program EQ2D 
!THIS PROGRAM SOLVES A SECOND DEGREE EQUATION  aX²+bx+c=0
implicit none  
!declaration of variables 
real(8)::a,b,c 
real(8)::delta ,x1,x2,x0 
complex(8)::z1,z2,i 
i=complex(0d0,1d0) 
!we verify that a is not equal to zero
do while  (a==0)  
   write(*,*)" ERROR:a must be  different from  zero"
   !an error message is displayed if a is zero
   write(*,*)"enter a new value of   a"
   !we request a new value for a 
   read(*,*) a 
 end do 
 !we are asking for they values of  a ,b ,c  

 write(*,*)  "enter the values of  a,b,c" 

 read(*,*) a,b,c 
 !we calculate the discriminant 
 delta=b**2-4*a*c 
 !we check whether the discriminant is greater than zero

 if (delta .gt.0.0) then 
 write(*,*)"the equation has two real solutions x1 et x2"  
 x2=(-b-sqrt(delta))/(2*a)
 x1 =(-b+sqrt(delta))/(2*a)
 write(*,*)" the solutions are  x1=",x1,"x2=",x2 
 !we check whether thr discriminant is zero
 else if (delta==0) then  
 !THE DISCRIMINANT IS ZERO ,WE HAVE A DOUBLE SOLUTION 
write(*,*)"the equation has a double real solution  x0" 
!WE DETERMINE THEY SOLUTION 
x0=-b/(2*a) 
write(*,*)" the solution is  x0=",x0 
!CASE WHERE THE DISCRIMINANT IS NEGATIVE 
else 
    write(*,*)" the  discriminant is negative   "  
 ! CALCULATION OF COMPLEX SOLUTION 

    z1=(-b-i*sqrt(-delta))/(2*a) 
    z2=(-b+i*sqrt(-delta))/(2*a)
  !DISPLAY OF SOLUTIONS   
    write (*,*)" the solutions are  z1=",z1,"z2=",z2 
 end if  
 !END OF THE PROGRAM 
 end program EQ2D  
