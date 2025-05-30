clc; clear all; close all; tic

global frameLength classType classGroups BOOST RA W...
    DATARANGE BINS Randomized Supervision Noise...
    Deterministic Probabalistic...
    GD BiCGSTAB

Deterministic = 1; Probabalistic = 0;

classType = [0 0]; classGroups = [0 0 0]; 

frameLength = 10000; DATARANGE = 256; BINS = 16;

Supervision = 1; Randomized = 0; Noise = 0;

GD = 1; BiCGSTAB = 0;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

A = readmatrix(' '); 

N = floor( size(A,1) / frameLength );

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

if ( Deterministic )

    % CNN

    A_ = histogramization(A,N,[]); A_ = mean(A_(:,:,:),3);
    
    % A_ = complexHistogramization(A,N,[]);

elseif ( Probabalistic )

    % HMM / CNN

    A_ = tansitionHistogramization(A,N,[]);

end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% if( HMM )

    % S = HMM(A_); 

% if ( fHMM )
    
    % S = fHMM(A_);

% end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Hypersurface...

[ G, Gj ] = hyperSurface( A_ );

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% BOOST = 1;

% RA = zeros(size(classType,2)+BOOST,BINS+BOOST,size(classGroups,2)-2+BOOST);

% W = zeros(size(RA,1),size(RA,2),size(RA,3)); W(1,:,1) = 1e1; W(2,:,1) = 1e2;

% [ RA ] = CNN( A_ );

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% [ RA ] = filterOptimization( RA, A_ );

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% We can put our system into a dyadic tree structure. This allows us to
% track the loss function over all data, and minimize cost until all 
% samples are classified. The size of the structure and the termination 
% leaf determines the value of N_l ( NxN, Leaf ).

% [ D ] = decisionTree();

toc