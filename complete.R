complete <- function (directory,id)
{
  pathName <- validationPath(directory)
  validateID(id)
  cid=c()
  cnrow=c()
  for (i in id)
  {
    idx = sprintf("%03d", i)
    fileName <- paste(pathName,"/",idx,".csv",sep="")
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
    w=na.omit(x)
   cid=c(cid,i)
   cnrow=c(cnrow,nrow(w))
  }
  patientData <- data.frame(id=cid ,nodes=cnrow)
  patientData
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


validateID<-function(id){
  n_min <-min(id)
  n_max <-max(id)
  if ((1<=n_min)&&(n_min<=3320))
  {NULL}
  else
  {
    stop("the file id should between 1 to 332 ")
  }
  
  if ((1<=n_max)&&(n_max<=3320))
  {NULL}
  else
  {
    stop("the file id should between 1 to 332 ")
  }
  
}

#complete('specdata',3:332)