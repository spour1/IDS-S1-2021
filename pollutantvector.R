pollutantvector <- function (directory, pollutant, id,p){

  # 1. directory
  # 2. pollutant in "sulfate" "nitrate"
  # 3. id 1:322
  # 4. p type is number
  pathName<-validationPath(directory)
  p_pollutant<-valiPollutant(pollutant)
  validateID(id)
  validateP(p)
  y<-c()
  z<-c()
  for (i in id)
  {
    idx = sprintf("%03d", i)
    fileName <- paste(pathName,"/",idx,".csv",sep="")
    #print(fileName)
    if (file.exists(fileName))
    {x= read.csv(fileName,
                header = TRUE, 
                sep = ",", 
                quote = "\"",
                dec = ".", 
                fill = TRUE)
    }
    else
    {
      warning(fileName," is not exists.")
      next
    }
    
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

validateP <-function(p)
{
  if (is.numeric(p))
    {NULL}
  else
    {stop(p," should be numeric")}
  
}

#pollutantvector('specdata','sulfate',1:20,12.44)
pollutantvector("specdata", "sulfate", 1:332,0.5)
