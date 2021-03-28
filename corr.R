corr <- function (directory,threshold=0){
  
  source("complete.R")
  list1 <- complete("specdata", 1:332)
  dc<-vector(mode="numeric",length=0)
  pathName <- paste(getwd(),"/",directory,sep="")
  for (i in 1:nrow(list1))
  {
    fid=list1[i,1]
    fnob=list1[i,2]
    
    if (fnob>threshold)
    {
      fid = sprintf("%03d", fid)
      fileName <- paste(pathName,"/",fid,".csv",sep="")
      #print(fileName)
      x= read.csv(fileName,
                  header = TRUE, 
                  sep = ",", 
                  quote = "\"",
                  dec = ".", 
                  fill = TRUE)
      
      w = na.omit(x)
      dc=c(dc,cor(w[["sulfate"]],w[["nitrate"]]))
      #print(w[["sulfate"]])
    }
    
  }
  print(dc)
}