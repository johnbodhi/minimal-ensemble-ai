function [ F_ ] = pAdicDT( N_, B_, S_, RA_, RS_, F_ ) 
     
     % Searching to optimize our sensitivity to parameter options.
     % EM waves, vibration, displacement, disturbance, noise, 
     % stress, heat, tension, geometry, motion, composition,
     % curvature

     % Discrimination methods, pre-processing methods, distribution types.

     for i = 1:1:size(B_,1)

        k = sum(B_(i,:),2)+1;

        ii = 2; jj = 1;

        S_( 1 ) = RA_(ii,jj,k);
        S_( 2 ) = RS_(ii,jj,k);

        for j = 1:1:size(B_,2)
     
            if( ~B_(i,j) )
        
                if( jj <= N_-1 )
        
                    jj = jj + 1; 
        
                    S_( 1 ) = S_( 1 ) + RA_(ii,jj,k);
                    S_( 2 ) = S_( 2 ) + RS_(ii,jj,k);
                end           
        
            elseif( B_(i,j) == P-8 )
        
                if( ii > 1 && jj <= N_-1 )
        
                    ii = ii + 1;
        
                    jj = jj + 1;    
        
                    S_( 1 ) = S_( 1 ) + RA_(ii,jj,k); 
                    S_( 2 ) = S_( 2 ) + RS_(ii,jj,k); 
                end  

            elseif( B_(i,j) == P-7 )

                if( ii > 1 && jj <= N_-1 && kk <= N_-1 )

                    ii = ii + 1;

                    jj = jj + 1; 

                    kk = kk + 1;         
                end   

            elseif( B_(i,j) == P-6 )

                if( ii > 1 && jj <= N_-1 )

                    jj = jj + 1; 

                    kk = kk + 1;    

                                
                end  

            elseif( B_(i,j) == P-5 )

                if( ii > 1 && jj <= N_-1 )

                    ii = ii - 1;
        
                    jj = jj + 1;

                    kk = kk + 1;


                                
                end    

            elseif( B_(i,j) == P-4 )

                if( ii > 1 && jj <= N_-1 )

                    ii = ii - 1;
        
                    jj = jj + 1;


                end 

            elseif( B_(i,j) == P-3 )

                if( ii > 1 && jj <= N_-1 )

                    ii = ii - 1;

                    jj = jj + 1; 

                    kk = kk - 1;


                              
                end  

            elseif( B_(i,j) == P-2 )

                if( ii > 1 && jj <= N_-1 )

                    jj = jj + 1;

                    kk = kk - 1;


                              
                end    

            elseif( B_(i,j) == P-1 )

                if( ii > 1 && jj <= N_-1 )

                    ii = ii - 1;

                    jj = jj + 1; 

                    kk = kk - 1;

                                
                end
            end                       
        end
        [ F_ ] = sol( S_, F_ );

     end
end