# Numerical analysis via R on low-dimensioal
#########################
library(EnsCat)
#########################
#########################
#########################



#########################
###### Run on Zoo data
#########################
#########################
#########################
 data("zoo")

 DisALzoo0<-hammingD((zoo$obs))
 DisALzoo<-as.dist(DisALzoo0)
 hcALzoo<-hclust(DisALzoo,method='average')
 plot(hcALzoo,label=zoo$lab,hang =-1)

 DisEnzoo<-Benhc(zoo$obs,En=200)
 hcENzoo<-hclust(DisEnzoo,method='average')
 plot(hcENzoo,label=zoo$lab,hang =-1)

 #########################
 ###### Run on Soy data
 #########################
 #########################
 #########################
 load("soy.RData")
 
 DisALsoy0<-hammingD(soy$obs)
 DisALsoy<-as.dist(DisALsoy0)
 hcALsoy<-hclust(DisALsoy,method='average')
 plot(hcALsoy,label=soy$lab,hang =-1)
 
 DisEnsoy<-Benhc(soy$obs,En=200)
 hsEnsoy<-hclust(DisEnsoy,method='average')
 plot(hsEnsoy,label=soy$lab,hang =-1)
 
 #########################
 ###### Run on Mushroom data
 #########################
 #########################
 #########################
 load("mush.RData")
 
 DisALmush0<-hammingD(mush$obs)
 DisALmush<-as.dist(DisALmush0)
 hcALmush<-hclust(DisALmush,method='average')
 plot(hcALmush,label=mush$lab,hang =-1)
 
 DisEnmush<-Benhc(mush$obs,En=200)
 hsEnmush<-hclust(DisEnmush,method='average')
 plot(hsEnmush,label=mush$lab,hang =-1)
 
 #########################
 ###### Run on Lympho data
 #########################
 #########################
 #########################
 load("lym.RData")
 
 DisALlym0<-hammingD(lym$obs)
 DisALlym<-as.dist(DisALlym0)
 hcALlym<-hclust(DisALlym,method='average')
 plot(hcALlym,label=lym$lab,hang =-1)
 
 DisEnlym<-Benhc(lym$obs,En=200)
 hsEnlym<-hclust(DisEnlym,method='average')
 plot(hsEnlym,label=lym$lab,hang =-1)
 
 
 #########################
 ###### Run on Cancer data
 #########################
 #########################
 #########################
 load("cancer.RData")
 
 DisALcancer0<-hammingD(cancer$obs)
 DisALcancer<-as.dist(DisALcancer0)
 hcALcancer<-hclust(DisALcancer,method='average')
 plot(hcALcancer,label=cancer$lab,hang =-1)
 
 DisEncancer<-Benhc(cancer$obs,En=200)
 hsEncancer<-hclust(DisEncancer,method='average')
 plot(hsEncancer,label=cancer$lab,hang =-1)
 #########################
 #########################
 #########################
 
 