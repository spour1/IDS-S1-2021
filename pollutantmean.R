
pollutantmean <- function (directory,pollutant,id)
{
  pathName <- paste(getwd(),"/",directory,sep="")
  y<-c()
  for (i in id)
  {
    idx = sprintf("%03d", i)
    fileName <- paste(pathName,"/",idx,".csv",sep="")
    #print(fileName)
    x= read.csv(fileName,
                header = TRUE, 
                sep = ",", 
                quote = "\"",
                dec = ".", 
                fill = TRUE)
   # print(x)
   # w = na.omit(x)
    #w=na.omit(x)
   # print(w$sulfate)
   # print(w)
    y = c(y,x[[pollutant]])
    y=na.omit(y)
   # mean(y)
   #print(y)
  }
  #y1<-as.numeric(y)
  mean(y)
}




