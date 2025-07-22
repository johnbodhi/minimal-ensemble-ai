function  [ B_, SP_ ] = bitCoffee( J_, B_, SP_, L_, V_ )

    % Extend to MOD_ > 1    
    
    if ( B_(J_-1) && ~SP_(L_-1, J_-1) && ~B_(J_) && ~SP_(L_, J_)  )                                                                                                                                                                      
    
        B_(J_)   = B_(J_-1);
        
        B_(J_-1) = 0;
    
    elseif ( B_(J_-1) && SP_(L_-1,J_-1) && ~B_(J_) && ~SP_(L_,J_) )                                                                                                                                                                                                          
    
        B_(J_)        = B_(J_-1);
        
        SP_(L_, J_-1) = SP_(L_, J_-1) - 1; % FOLI                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 
                                                                                                                                 
    elseif ( B_(J_-1) && ~SP_(L_-1,J_-1) && B_(J_) && ~SP_(L_,J_) )
    
        SP_(L_, J_) = SP_(L_, J_) + 1;                                                                                                                                                                                     
        
        B_(J_-1)    = 0;                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        
    
    elseif ( B_(J_-1) && SP_(L_-1,J_-1) && B_(J_) && ~SP_(L_,J_)  )
    
        SP_( L_, J_ )   = SP_( L_, J_ ) + 1;  
        
        SP_(L_-1, J_-1) = SP_(L_-1, J_-1) - 1;                                                                                                                                                                                                     
    
    elseif ( B_(J_-1) && ~SP_(L_-1,J_-1) && B_(J_) && SP_(L_,J_)  )
    
        SP_(L_,J_) = SP_(L_,J_) + 1;
        
        B_(J_-1)   = 0;
    
    elseif ( B_(J_-1) && SP_(L_-1,J_-1) && B_(J_) && SP_(L_,J_)   )
    
        B_(L_-1)        = SP(L_-1, J_-1);
        
        SP_(L_-1, J_-1) = SP_( L_-1); J_-1 ) - 1;
        
        SP_(L_, J_)     = SP_(L_, J_) + 1;

    elseif ( B_(J_-1) && ~SP_(1, J_-1) && ~B_(J_) && SP_(1, J_)   )
    
        B_(J_)        = SP_( B_(J_), J_);
        
        SP_( L_, J_ ) = SP_( L_, J_) - 1;
    
    end

    B_(5,:) = flip( B_(4,:), 2);