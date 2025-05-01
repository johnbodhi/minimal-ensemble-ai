clear all; close all; clc; tic;

N = 100;

[ RA, RS ] = trellis(); 

Z = diag(flip(pascal(N),2));

EMAX = log(sum(Z(1:ceil(N/2)))) / log( 2 ); % T = sym(2^EMAX);

K = 1; P = 0; % MOD = 1; 

F = [ -1 10000 ];

for Q = ceil(N/2):-1:1

    % A = 1;

    while( P < Z(Q) )
    
        B(1,:) = permn([0;1],N-1,K); K = K + 1;

        B(2,:) = monteCarlo(N,EMAX); 

        % B(3,:) = permn([1;0],N-1,T); T = T - 1; % Slow...       

        % M = (0:1:MOD)';

        % B(5,:) = permn(M,N-1,D); D = D + 1;
    
        if( K == sum(Z(1:ceil(N/2)))+1 )
    
            break;
        end

        if( sum(B(1,:)) == Q-1 )
    
            P = P + 1;
        end

        % if ( A )
        % 
        %     [ ~, B, STL, STU, SP ] = allocate( Q, MOD, B );
        % end        

        % [ B(4,:), STL, STU, SP ] = DNN( N, Q, B(3,:), STL, STU, SP );

        % if ( A )
        % 
        %    [ F, ~, ~, ~ ] = allocate( Q, MOD, B ); A = 0;
        % end

        % [ F ] = histogram( B, F );

        if( sum(B(1,:)) < ceil(N/2) && sum(B(2,:)) < ceil(N/2) )
    
            [ F ] = pAdicDT( N, B, RA, RS, F );
        end
    
    end
    P = 0;

    if( K == sum(Z(1:ceil(N/2)))+1 )

        break;
    end

end
toc;