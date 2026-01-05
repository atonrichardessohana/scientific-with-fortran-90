program suite 
implicit none  
!declaration of the variables 
real(8)::u 
! declaration of   i and  n  
integer::i,n 
! we ask an integer value  n 
write(*,*)"enter an integer value  n "
read(*,*) n 
!we initialize u to one 
    u = 1d0 
do i = 0, n 
      u= 2*U+3d0 
!on affiche les termes pour les  valeurs  de 0 a  n  donne 
     write(*,*)"the value of u at position  ",i,"is",u 
!fin de programme
end do  
end program suite 
