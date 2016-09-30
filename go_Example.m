% Example of running bi-BPCA for missing value estimation of microarray data

% The missing values in matrices are represented by 'NaN' in the Matlab .mat
% file. Before running this method, all missing values in your data should
% be converted as the form of 'NaN'.

% This method is time consuming, please allow adequate time for running.

% Folders attachment, bi-BPCA and BPCA should be added into current working
% directory

% The scripts in the BPCA folder are slightly modified from the code of
% S. Oba, M.-a. Sato, I. Takemasa, M. Monden, K.-i. Matsubara, and S. Ishii, 
% "A Bayesian missing value estimation method for gene expression profile data," 
% Bioinformatics, vol. 19, pp. 2088-2096, November 1, 2003. 
% Original source of BPCA is available at http://ishiilab.jp/member/oba/tools/BPCAFill.html

% M. Fanchi, C. Cheng, and Y. Hong, "A Bicluster-Based Bayesian Principal
% Component Analysis Method for Microarray Missing Value Estimation," 
% Biomedical and Health Informatics, IEEE Journal of, vol. 18, pp. 863-871, 2014.

clear;clc;
addpath attachment bi-BPCA BPCA;
load example_data;

% call bi-BPCA. imputed_matrix = f_bicluster_BPCA(missing_matrix, iterations)
M_imputed = f_bicluster_BPCA(M_missing,1);

% calculate and display NRMSE
NRMSE = Get_NRMSE(M_complete,M_missing,M_imputed);
NRMSE,