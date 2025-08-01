function [ F_, B_, STL_, STU_, SP_ ] = allocate( Q_, MOD_, B_ )

    DATARANGE  = size(B_,2);

    F_         = zeros( size(B_,1), DATARANGE );

    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

    B_(3,1:Q_) = permn( (MOD_:-1:0)', Q_, 1 );
    
    STL_       = (Q_:-1:1)';

    STU_       = (DATARANGE:-1:Q_)';

    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

    SP_                  = zeros( MOD_, DATARANGE );

    SP_( B_(3, Q_), Q_-1 ) = B_(3, Q_); 

    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

    B_( 3, Q_ ) = 0;