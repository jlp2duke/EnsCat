



# Numerical analysis via R on high-dimensioal
#########################
library(EnsCat)
#########################
#########################
#########################



#########################
###### Run on Ebola data
#########################
#########################
#########################
load("ebola.RData")
# Run AL
DisAL0<-hammingD(ebola$obs)
DisAL<-as.dist(DisAL0)
hcAL <- hclust(DisAL,method = "average")
plot(hcAL,label=ebola$la,hang =-1) 

# Run EN-AL
ens<-enhcHi(ebola$obs,En=200,len=c(2,10), type=2)
DisEn0<-hammingD(ens)
DisEn<-as.dist(DisEn0)
hcEN <- hclust(DisEn,method = "average")
plot(hcEN,label=ebola$la,hang =-1)


#########################
###### Run on SNP data
#########################
#########################
#########################
load("SNPRICE.RData") 

### Note:the label are a:aromatic,  d:indica, e: temperate japonica, r: tropical japonica, s:aus 
### Note: This data is very big data so  and running ensembling is very time-consuming

#DisAL0<-hammingD(SNPRICE$obs)
#DisAL<-as.dist(DisAL0)
hcAL <- hclust(DisAL,method = "average")
plot(hcAL,label=SNPRICE$lab,hang =-1) 



# Run EN-AL
#ens<-enhcHi(SNPRICE$obs,En=200,len=c(2,20), type=2)
#DisEn0<-hammingD(ens)
#DisEn<-as.dist(DisEn0)
hcEN <- hclust(DisEn,method = "average")
plot(hcEN,label=SNPRICE$lab,hang =-1)


library(trio)
library(ape)

colorCodes <- c(AD='pink',e="red", d="green", s="blue", a="yellow", r="black")

ashc<-as.phylo(hcAL)
ashc$tip.label<-SNPRICE$lab

plot(ashc,tip.color=colorCodes[SNPRICE$lab], type="fan")

ashc<-as.phylo(hcEN)
ashc$tip.label<-SNPRICE$lab

plot(ashc,tip.color=colorCodes[SNPRICE$lab], type="fan")










