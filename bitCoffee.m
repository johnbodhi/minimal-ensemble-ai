function  [ B_, SP_ ] = bitCoffee( J_, B_, SP_ )

    % Extend to MOD_ > 1

    if ( B_(J_-1) && ~SP_(B_(J_-1), J_-1) && ~B_(J_) && SP_(B_(J_), J_)   )
    
        B_(J_)            = SP_( B_(J_), J_);
        
        SP_( B_(J_), J_ ) = SP_( B_(J_), J_) - 1;
    
    elseif ( B_(J_-1) && ~SP_(B_(J_-1),J_-1) && ~B_(J_) && ~SP_(B_(J_),J_))                                                                                                                                                                         
    
        B_(J_) = B_(J_-1);
        
        B_(J_) = 0;
    
    elseif ( B_(J_-1) && SP_(B_(J_-1),J_-1) && ~B_(J_) && ~SP_(B_(J_),J_) )                                                                                                                                                                                                               
    
        B_(J_)                = B_(J_-1);  
        
        SP_( B_(J_-1), J_-1 ) = SP_( B_(J_-1), J_-1 ) - 1;                                                                                                                                                                                             
        
        B_(J_-1)              = SP_( B_(J_), J_ );                                                                                                                                                                                                                                                                                                                                                                         
                                                                                                                                 
    elseif ( B_(J_-1) && ~SP_(B_(J_-1),J_-1) && B_(J_) && ~SP_(B_(J_),J_) )
    
        SP_( B_(J_-1), J_-1 ) = SP_( B_(J_), J_-1 ) + 1;                                                                                                                                                                                     
        
        B_(J_)                = 0;                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  
    
    elseif ( B_(J_-1) && SP_(B_(J_-1),J_-1) && B_(J_) && ~SP_(B_(J_),J_)  )
    
        SP_( B_(J_), J_ )     = SP_( B_(J_), J_ ) + 1;   
        
        B_( J_-1)             = SP_(B_(J_-1),J_-1 );
        
        SP_( B_(J_-1), J_-1 ) = SP_( B_(J_-1), J_-1 ) - 1;                                                                                                                                                                                                     
    
    elseif ( B_(J_-1) && ~SP_(B_(J_-1),J_-1) && B_(J_) && SP_(B_(J_),J_)  )
    
        SP_(B_(J_),J_) = SP_(B_(J_),J_) + 1;
        
        B_(J_)         = 0;
    
    elseif ( B_(J_-1) && SP_(B_(J_-1),J_-1) && B_(J_) && SP_(B_(J_),J_)   )
    
        B_(J_-1)                = SP( B_(J_-1), J_-1 );
        
        SP_( B_(J_-1), J_-1  )  = SP_( B_(J_-1), J_-1 ) - 1;
        
        SP_( B_(J_), J_ )       = SP_( B_(J_), J_ ) + 1;
    
    elseif ( B_(J_-1) && SP_(B_(J_-1),J_-1) && B_(J_) && SP_(B_(J_),J_)   )
        

    elseif ( B_(J_-1) && SP_(B_(J_-1),J_-1) && B_(J_) && SP_(B_(J_),J_)   )


    elseif ( B_(J_-1) && SP_(B_(J_-1),J_-1) && B_(J_) && SP_(B_(J_),J_)   )


    elseif ( B_(J_-1) && SP_(B_(J_-1),J_-1) && B_(J_) && SP_(B_(J_),J_)   )


    elseif ( B_(J_-1) && SP_(B_(J_-1),J_-1) && B_(J_) && SP_(B_(J_),J_)   )


    elseif ( B_(J_-1) && SP_(B_(J_-1),J_-1) && B_(J_) && SP_(B_(J_),J_)   )


    elseif ( B_(J_-1) && SP_(B_(J_-1),J_-1) && B_(J_) && SP_(B_(J_),J_)   )


    elseif ( B_(J_-1) && SP_(B_(J_-1),J_-1) && B_(J_) && SP_(B_(J_),J_)   )


    elseif ( B_(J_-1) && SP_(B_(J_-1),J_-1) && B_(J_) && SP_(B_(J_),J_)   )


    end