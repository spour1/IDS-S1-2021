corr <- function (directory,threshold=0){
  
  source("complete.R")
  list1 <- complete(directory, 1:332)
  dc<-vector(mode="numeric",length=0)
  #pathName <- paste(getwd(),"/",directory,sep="")
  pathName<-validationPath(directory)
  if (is.numeric(threshold))
  {NULL}
  else
  {stop("threshold needs a number.")}
  for (i in 1:nrow(list1))
  {
    fid=list1[i,1]
    fnob=list1[i,2]
    
    if (fnob>threshold)
    {
      fid = sprintf("%03d", fid)
      fileName <- paste(pathName,"/",fid,".csv",sep="")
      #print(fileName)
      if (file.exists(fileName)){
      x= read.csv(fileName,
                  header = TRUE, 
                  sep = ",", 
                  quote = "\"",
                  dec = ".", 
                  fill = TRUE)}
      else
      {
        warning(fileName," is not exists.")
        next
      }
      w = na.omit(x)
      dc=c(dc,cor(w[["sulfate"]],w[["nitrate"]]))
      #print(w[["sulfate"]])
    }
    
  }
  print(dc)
}

validationPath<- function(directory) 
{
  if (dir.exists(directory))
    directory
  else
  {
    stop("Please put folder specdata under:",getwd())
  }
}

#corr('specdata',200)