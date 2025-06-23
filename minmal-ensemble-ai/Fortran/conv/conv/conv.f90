program conv
use ifport
implicit none

integer, parameter      :: N = , M = 
integer                 :: i, j, k

real                    :: t,t_(2),t1,t2,ta(2)

call CPU_TIME(t1); t = etime(t_);









print*," "
write(*,*) 'Program has used', t, 'seconds of CPU time.'
write(*,*) 'User Time: ',t_(1),' System Time: ',t_(2)

call CPU_TIME(t2)
write(*,*) 'Program has used', t2,'seconds.'
pause

end program conv