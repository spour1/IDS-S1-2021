pollutantvector <- function (directory, pollutant, id,p){
  pathName <- paste(getwd(),"/",directory,sep="")
  y<-c()
  z<-c()
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
    
    y = c(y,x[[pollutant]])
  }
  y=na.omit(y)
  for (i in (1:length(y))){
    if (y[i] > p)
    {
      z<-c(z,y[i])
    }
    
  }
   z
}
