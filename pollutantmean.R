
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
    x1<-x[-1,]
    
    w=na.omit(x1)
    View(w)
    View(w[[pollutant]])
   # print(w$sulfate)
   # print(w)
    y = c(y,w[[pollutant]])
   # mean(y)
   #print(y)
  }
  y1<-as.numeric(y)
  mean(y)
}




