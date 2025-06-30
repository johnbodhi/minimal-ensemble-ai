clc; clear all; close all; tic

global Time Frequency Optimization...
        frameLength classType classGroups...
        RA W BOOST...
        DATARANGE BINS Randomized Supervision AWGN...
        GD BiCGSTAB NN xHMM DT...

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

    Time = 0; Frequency = 1; 
    
    classType = [0 0]; classGroups = [0 0 0]; 
    
    frameLength = 10000; DATARANGE = 256; BINS = 16;
    
    Supervision = 1; 
    
    Randomized = 0; 
    
    AWGN = 0;
    
    GD = 1; BiCGSTAB = 0; 
    
    NN = 1; xHMM = 0; 
    
    DT = 0;

    Optimization = 1;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

A = readmatrix(' '); 

N = floor( size(A,1) / frameLength );

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

A_ = hist(A,N,[]); A_ = mean(A_(:,:,:),3);

A_ = compHist(A,N,[]);

A_ = transHist(A,N,[]);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

if( HMM )

    S = HMM(A_); 

if ( fHMM )
    
    S = fHMM(A_);

end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Hypersurface...

% [ G, Gj ] = hyperSurface( A_ );

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

BOOST = 1;

RA = zeros(size(classType,2)+BOOST,BINS+BOOST,...
    size(classGroups,2)-2+BOOST);

W = zeros(size(RA,1),size(RA,2),size(RA,3)); 

W(1,:,1) = 1e1; 

W(2,:,1) = 1e2;

[ CRA ] = CNN( A_ );

[ DRA ] = DNN( A_ );

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

[ RA ] = filterOptimization( RA, A_ );

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% We can put our system into a p-adic tree structure. This allows us to
% track the loss function over all data, and minimize cost until all 
% samples are classified. The size of the structure and the termination 
% leaf determines the value of an NxN leaf.

[ D_ ] = pAdicDT();

[ D_ ] = DTOptimization( D_ );

toc;