clear all; close all; clc; tic;

N = 100;

[ RA, RS, RAF, RSF, N ] = trellis();

% Fold half of half etc... Overlap lower value directive with higher valued
% directives in the same leaf? p-Adic directives and p-Adic directed geometry!

% j-directed in (i,j,k,l,...M) dimensions! We are learning the shape of
% leafs in 1-N dimensions, and folding the geometry toward higher density
% segments to embed p-adic directives in the data structures swept out by the
% combinations defining the directed modulus.

% The DNN will sweep the folded structure linearly forward and backward,
% and populate the p-adic search automatically.

Z = ceil(diag(flip(pascal(N),2))./2); 

Z = Z(1:ceil(N/2));

% EMAX = log(sum(Z,1)) / log( 2 ); % T = sym(2^EMAX);

K = 1; P = 0; % MOD = 1; % M = (0:1:MOD)';

F = [ -1 10000 ];

for Q = ceil(N/2):-1:1

    % A = 1;

    while( P < Z(Q) )
    
        B(1,:) = permn([0;1],N-1,K); K = K + 1;

        % B(2,:) = monteCarlo(N,EMAX);

        % B(3,:) = permn([1;0],N-1,T); T = T - 1; % Slow...       

        % B(4,:) = permn(M,N-1,D); D = D + 1;
    
        if ( K == sum( Z(1:ceil(N/2)) ) + 1 )
    
            break
        end

        if( sum(B(1,:)) == Q-1 )
    
            P = P + 1;
        end

        % if ( A )
        % 
        %     [ ~, B, STL, STU, SP ] = allocate( Q, MOD, B );
        % end        

        % [ B(4:5,:), STL, STU, SP ] = DNN( N, Q, B(4,:), STL, STU, SP );

        % if ( A )
        % 
        %    [ F, ~, ~, ~ ] = allocate( Q, MOD, B ); A = 0;
        % end

        % [ F ] = binHist( B, F );

        if( sum(B(1,:)) < ceil(N/2) && sum(B(2,:)) < ceil(N/2) )
    
                [ F ] = pAdicDT( N, B, RA, RS, F );
        end
    
    end
    P = 0;

    if( K == sum(Z(1:ceil(N/2)))+1 )

        break
    end

end
toc;