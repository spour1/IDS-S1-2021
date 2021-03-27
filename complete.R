complete <- function (directory,id)
{
  pathName <- paste(getwd(),"/",directory,sep="")
  cid=c()
  cnrow=c()
  for (i in id)
  {
    idx = sprintf("%03d", i)
    fileName <- paste(pathName,"/",idx,".csv",sep="")
    x= read.csv(fileName,
                header = TRUE, 
                sep = ",", 
                quote = "\"",
                dec = ".", 
                fill = TRUE)
    w=na.omit(x)
   cid=c(cid,i)
   cnrow=c(cnrow,nrow(w))
  }
  patientData <- data.frame(id=cid ,nobs=cnrow)
  patientData
}
