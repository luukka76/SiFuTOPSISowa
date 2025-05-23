clear all
close all
%Example with evaluations from three decision makers, from five criteria
%and five different alternatives.

%Number of decision makers k, i.e.
k=3;        
%Number of criterias to be evaluated n i.e.
n=5;        
%Informmation about is the given criteria cost or benefit criteria:
%Benefit=1, Cost=2, should be given as a vector of length n. i.e.
criteria=[1 1 1 1 1];

%Number of attributes to be ranked (suppliers in example case in the article). i.e.
m=5; 

%Criteria for selecting Fuzzy Positive Ideal Solution FPIS and Fuzzy Negative Ideal Solution FNIS.
%Three possible option are now implemented. See [1.] for more information. i.e.

ideal=1;     

%Chosen similarity measure: Integer number within {1,2,3,4}
simi=4;

%Loading the needed linguistic variables for importance weight of each criterion and for ratings as generalized fuzzy
%numbers. See linvar.m for details.

lingvar

%Importance weights from decision makers:
WD1={H VH VH H H};
WD2={H VH VH H H};
WD3={H VH H H H};
WD={WD1;WD2;WD3};


%Example of decision matrices from three decision makers:

FDM1={MG MG G G G; G VG VG G VG; VG VG VG VG G; G G MG G G; MG MG MG MG MG};
FDM2={MG MG G G G; G VG VG VG VG; VG G VG VG VG; G G MG G G; MG G MG MG MG};
FDM3={MG VG G G G; G VG VG VG VG; G G G VG G; G MG G G VG; MG G MG G MG};
FDM={FDM1;FDM2;FDM3};

%**********************************************************
%Example of aggregation of OWA weights for decision makers
%Full set: {At least one (O), Few (F), Some (S), Many (Ma), Most (Mo), All (A)}
L1D1={Mo}; L1D2={Ma}; L1D3={Ma}; L2D1={F1}; L2D2={S}; L2D3={O}; 
DM123OWA1={L1D1;L1D2;L1D3};
%DM123OWA2={F;S;O};
DM123OWA2={L2D1;L2D2;L2D3;}

a1=aggregateW(DM123OWA1,3,1)
a2=aggregateW(DM123OWA2,3,1)

Fullset=[O; F1; S; Ma; Mo; A]
%S1=fuzzsimveca(Fullset,{a1,6,simi)
for i=1:6
    S1(i)=fsimil2([Fullset(i,:)],[a1 1]);
    S2(i)=fsimil2([Fullset(i,:)],[a2 1]);
end
S1max=find(S1==max(S1));
S2max=find(S2==max(S2));
alphas=[0.00001 0.1 0.5 2 10 1000]; %One for each ling estimate
%pause
%Alpha values for RIM quantifier (Q(x)=x^alpha) for both ideal vectors
alpha1=alphas(S1max);
alpha2=alphas(S2max);
%**********************************************************

[CCS,Sstar,Sneg,Order]=Stopsis(WD,FDM,k,m,n,ideal,criteria,simi,alpha1,alpha2);

disp('Similarities w.r.t. attribute and FPIS:')
Sstar
disp('Similarities w.r.t. attribute and FNIS:')
Sneg

disp('Order of the attributes:')
Order
disp('Closeness values with similarity for choosing attributes:')
CCS

