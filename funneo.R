taxon0 <- list.files("/home/gustavobortolanza/ic_projeto/dat_taxon0",full.names = TRUE,pattern = "*.dat")
taxon1 <- list.files("/home/gustavobortolanza/ic_projeto/dat_taxon1",full.names = TRUE,pattern = "*.dat")
taxon2 <- list.files("/home/gustavobortolanza/ic_projeto/dat_taxon2",full.names = TRUE,pattern = "*.dat")
taxon3 <- list.files("/home/gustavobortolanza/ic_projeto/dat_taxon3",full.names = TRUE,pattern = "*.dat")
taxon4 <- list.files("/home/gustavobortolanza/ic_projeto/dat_taxon4",full.names = TRUE,pattern = "*.dat")
taxon5 <- list.files("/home/gustavobortolanza/ic_projeto/dat_taxon5",full.names = TRUE,pattern = "*.dat")
taxon6 <- list.files("/home/gustavobortolanza/ic_projeto/dat_taxon6",full.names = TRUE,pattern = "*.dat")
taxon7 <- list.files("/home/gustavobortolanza/ic_projeto/dat_taxon7",full.names = TRUE,pattern = "*.dat")
taxon8 <- list.files("/home/gustavobortolanza/ic_projeto/dat_taxon8",full.names = TRUE,pattern = "*.dat")
taxon9 <- list.files("/home/gustavobortolanza/ic_projeto/dat_taxon9",full.names = TRUE,pattern = "*.dat")

funneo <- function(i){
  taxon <- read.delim(i,header = TRUE,sep = "")
  taxon$V7 <- taxon$experimental/1000.
  taxon$V8 <- taxon$database/1000.
  taxon$score <- ( 1. - (1. - taxon$V7)*(1. - taxon$V8))
  taxon[taxon$score>=0.7,c("protein1","protein2")]
  result <- taxon[taxon$score>=0.7,c("protein1","protein2")]
  print(i)
  return(result)
}

result0<-lapply(taxon0,funneo)
result1<-lapply(taxon1,funneo)
result2<-lapply(taxon2,funneo)
result3<-lapply(taxon3,funneo)
result4<-lapply(taxon4,funneo)
result5<-lapply(taxon5,funneo)
result6<-lapply(taxon6,funneo)
result7<-lapply(taxon7,funneo)
result8<-lapply(taxon8,funneo)
result9<-lapply(taxon9,funneo)

save(result0,file="/home/gustavobortolanza/ic_projeto/result0.Rdata")
save(result1,file="/home/gustavobortolanza/ic_projeto/result1.Rdata")
save(result2,file="/home/gustavobortolanza/ic_projeto/result2.Rdata")
save(result3,file="/home/gustavobortolanza/ic_projeto/result3.Rdata")
save(result4,file="/home/gustavobortolanza/ic_projeto/result4.Rdata")
save(result5,file="/home/gustavobortolanza/ic_projeto/result5.Rdata")
save(result6,file="/home/gustavobortolanza/ic_projeto/result6.Rdata")
save(result7,file="/home/gustavobortolanza/ic_projeto/result7.Rdata")
save(result8,file="/home/gustavobortolanza/ic_projeto/result8.Rdata")
save(result9,file="/home/gustavobortolanza/ic_projeto/result9.Rdata")


