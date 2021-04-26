
pollutantmean <- function (directory,pollutant,id)
{
  # 1. directory
  # 2. pollutant in "sulfate" "nitrate"
  # 3. id 1:322
  
  
  #pathName <- paste(getwd(),"/",directory,sep="")
  pathName<-validationPath(directory)
  p_pollutant<-valiPollutant(pollutant)
  validateID(id)
  
  y<-c()
  for (i in id)
  {
    idx = sprintf("%03d", i)
    fileName <- paste(pathName,"/",idx,".csv",sep="")
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
   # print(x)
   # w = na.omit(x)
    #w=na.omit(x)
   # print(w$sulfate)
   # print(w)
    y = c(y,x[[p_pollutant]])
    
   # mean(y)
   #print(y)
  }
  #y1<-as.numeric(y)
  y=na.omit(y)
  mean(y)
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

valiPollutant <- function (pollutate) {
  
  p_pollutant<-tolower(pollutate)
  
  if (p_pollutant == 'nitrate'||pollutate =='sulfate')
  {
    p_pollutant
  }
  else
  {
    stop("Please enter correct value for pollutant:",pollutate)
    
  }
  p_pollutant
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

#pollutantmean('specdata','sulfate',1:20)


