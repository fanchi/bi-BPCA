# bi-BPCA
Imputing missing values in microarray data
# before running this method
The missing values in matrices are represented by 'NaN' in the Matlab .mat file. Before running this method, all missing values in your data should be converted as the form of 'NaN'.  

This method is time consuming, please allow adequate time for running.  

Folders attachment, bi-BPCA and BPCA should be added into current working directory.
# usage
[matrix_imputed] = f_bicluster_BPCA ([matrix_missing], [number of iterations])
# example
M_imputed = f_bicluster_BPCA(M_missing, 1);
# citation
F. Meng, C. Cai, and H. Yan, "A Bicluster-Based Bayesian Principal Component Analysis Method for Microarray Missing Value Estimation," Biomedical and Health Informatics, IEEE Journal of, vol. 18, pp. 863-871, 2014.
# acknowledgement
The scripts in the BPCA folder are slightly modified from the code of  
S. Oba, M.-a. Sato, I. Takemasa, M. Monden, K.-i. Matsubara, and S. Ishii, "A Bayesian missing value estimation method for gene expression profile data," Bioinformatics, vol. 19, pp. 2088-2096, November 1, 2003.  
Original source of BPCA is available at http://ishiilab.jp/member/oba/tools/BPCAFill.html
