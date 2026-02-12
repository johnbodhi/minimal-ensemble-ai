function  [B_,SP_] = bitFlip(J_,B_,STL_,STU_,SP_,SPNC_,SPC_)

    % Extend to MOD_ > 1 -> [0,...,N]   

    % Extend objectve function SP_ block as minimizer: 
    % Bit position index (emission), Bit value, Accumulated SP_ values, emission
    % values, Convolution range values, Convolutional range
    % indexes, Logic layer index value, Logic layer column operation output value )

        M_        = size(B_,2)                                                                   ;

        % [MX_,IX_] = max(SP_,[],'linear')                                                       ;

        K_        = size(find(SPNC_(B_(J_),J_)),1)                                               ;
    
    if     ( B_(J_-1) && ~SPNC_(B_(J_-1),J_-1) && ~B_(J_) && ~SPNC_(B_(J_),J_)                   )                                                                                                                                                                      
    
        B_(J_)                    = B_(J_-1)                                                     ;
         
        B_(J_-1)                  = 0                                                            ;

        if ( J_ == M_  )                                                                         )
 
            if ( SPNC_(B_(STL_(I_)),J_)                                                          )

                SPNC_(B_(J_), STL_(I_)) = SPNC_(B_(J_),STL_(I_)) + 1                             ; 

                SPC_              = SPC_ + 1                                                     ;
            end
            
            if (                                                                                 )                                                                 

                B_(STL_(J_))       = B_(J_)                                                      ;
                B_(J_)             = 0                                                           ;
            end
            
        end
    
    elseif ( B_(J_-1) && SPNC_(B_(J_-1), J_-1) && ~B_(J_) && ~SPNC_(B_(J_), J_)                  )                                                                                                                                                                                                          
    
        B_(J_)                    = B_(J_-1)                                                     ;

        B_(J_-1)                  = SPNC_(B_(J_),J_-1)                                           ;
        
        SPNC_(B_(J_-1), J_-1)     = SPNC_(B_(J_-1), J_-1) - 1                                    ;   

        SPC_                      = SPC_ - 1                                                     ;   
                                                                                                                                 
    elseif ( B_(J_-1) && ~SPNC_(B_(J_-1),J_-1) && B_(J_) && ~SPNC_(B_(J_),J_)                    )
    
        SPNC_(B_(J_), J_)         = SPNC_(B_(J_), J_) + 1                                        ;    

        SP_(B_(J_),J_,K_+1)       = SPC_                                                         ;
        
        B_(J_-1)                  = 0                                                            ;   

        SPC_                      = SPC_ + 1                                                     ;   
    
    elseif ( B_(J_-1) && SPNC_(B_(J_-1),J_-1) && B_(J_) && ~SPNC_(B_(J_),J_)                     )

        B_(J_-1)                  = SPNC_(B_(J_-1),J_-1)                                         ;

        SPNC_(B_(J_-1), J_-1)     = SPNC_(B_(J_-1), J_-1) - 1                                    ;  
    
        SPNC_( B_(J_), J_ )       = SPNC_( B_(J_), J_ ) + 1                                      ;         
    
    elseif ( B_(J_-1) && ~SPNC_(B_(J_-1),J_-1) && B_(J_) && SPNC_(B_(J_),J_)                     )
    
        SPNC_(B_(J_),J_)          = SPNC_(B_(J_),J_) + 1                                         ;
        
        B_(J_-1)                  = 0                                                            ;

        SPC_                      = SPC_ + 1                                                     ;   
    
    elseif ( B_(J_-1) && SPNC_(B_(J_-1),J_-1) && B_(J_) && SPNC_(B_(J_),J_)                      )
    
        B_(J_-1)                  = SPNC_(B_(J_-1), J_-1)                                        ;
        
        SPNC_(B_(J_-1), J_-1)     = SPNC_(B_(J_-1),J_-1) - 1                                     ;

    elseif ( ~B_(J_-1) && SPNC_(B_(J_-1), J_-1) && ~B_(J_) && ~SPNC_(B_(J_), J_)                 )                                                                                                                                                                                                

        B_(J_-1)                  = B_(J_-1)                                                     ;

        SPNC_(B_(J_), J_-1)       = SPNC_(B_(J_), J_-1) - 1                                      ;         
    end
