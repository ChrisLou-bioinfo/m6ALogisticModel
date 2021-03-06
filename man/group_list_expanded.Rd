% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/data.R
\docType{data}
\name{group_list_expanded}
\alias{group_list_expanded}
\title{An alternative group list}
\format{A List object.}
\usage{
library(SummarizedExperiment)
library(TxDb.Hsapiens.UCSC.hg19.knownGene)
library(BSgenome.Hsapiens.UCSC.hg19)
library(fitCons.UCSC.hg19)
library(phastCons100way.UCSC.hg19)

Feature_List_expanded_hg19 = list(
 HNRNPC_eCLIP = eCLIP_HNRNPC_gr,
 YTHDC1_TREW = YTHDC1_TREW_gr,
 YTHDF1_TREW = YTHDF1_TREW_gr,
 YTHDF2_TREW = YTHDF2_TREW_gr,
 miR_targeted_genes = miR_targeted_genes_grl,
 TargetScan = TargetScan_hg19_gr,
 Verified_miRtargets = verified_targets_gr,
 METTL3_TREW = METTL3_TREW,
 METTL14_TREW = METTL14_TREW,
 WTAP_TREW = WTAP_TREW,
 METTL16_CLIP = METTL16_CLIP,
 ALKBH5_PARCLIP = ALKBH5_PARCLIP,
 FTO_CLIP = FTO_CLIP,
 FTO_eCLIP = FTO_eCLIP
)


SE_features_added <- predictors.annot(se = SE_example,
                                     txdb = TxDb.Hsapiens.UCSC.hg19.knownGene,
                                     bsgnm = Hsapiens,
                                     fc = fitCons.UCSC.hg19,
                                     pc = phastCons100way.UCSC.hg19,
                                     struct_hybridize = Struc_hg19,
                                    feature_lst = Feature_List_expanded_hg19,
                                     HK_genes_list = HK_hg19_eids)


logistic.modeling(
 SE_features_added,
 MCMC_iterations = 100000,
 decision_method = "BPM",
 save_dir = "LogisticModel_X",
 sample_names_coldata = "ID",
group_list = group_list_expanded
)
}
\description{
Defined by the following Code:
}
\details{
group_list_expanded = list(
UTR5 = c("UTR5", "Pos_UTR5", "length_UTR5"),
CDS = c("CDS", "Pos_CDS", "length_CDS"),
UTR3 = c("UTR3", "Pos_UTR3", "length_UTR3"),
Exon = c("exons", "Pos_exons", "long_exon","Last_exons_50bp"),
Gene = c("Pos_Tx","length_gene_ex","length_gene_full","Isoform_num","sncRNA","lncRNA","HK_genes"),
LandMarks = c("m6Am","Start_codons","Stop_codons"),
Motif = c("AAACA","GAACA","AGACA","GGACA","AAACT","GAACT","AGACT","GGACT","AAACC","GAACC","AGACC","GGACC"),
Structure = c("struct_hybridize","struct_loop"),
Evolution = c("PC_1nt","PC_101nt","FC_1nt","FC_101nt"),
miRNA_RBP = c("HNRNPC_eCLIP", "YTHDC1_TREW", "YTHDF1_TREW", "YTHDF2_TREW", "miR_targeted_genes","TargetScan","Verified_miRtargets"),
Writers_Erasers = c("METTL3_TREW","METTL14_TREW","WTAP_TREW","METTL16_CLIP","ALKBH5_PARCLIP","FTO_CLIP","FTO_eCLIP"),
Batch = c("GC_cont_genes","GC_cont_101bp","Intercept")
)

The list include an extra module called Writers_Erasers compared with \Code{group_list_default}, these data are published CLIP datasets of m6A writers and erasers.
}
\note{
For other provided list for grouping, please check \code{\link{group_list_default}}
}
\keyword{datasets}
