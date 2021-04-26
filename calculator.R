calculator <- function (){
print("******Simple R Calculator - Select operation: ******")
print("1.Add")
print("2.Subtract")
print("3.Multiply")
print("4.Divide")
print("5.Factors")
print("6.Prime")
a=readline(prompt="Enter choice [1/2/3/4/5/6]:")
if (a==1)
{fadd() }
else if(a==2)
{fSubtract()}
else if (a==3)
{fMultiply()}
else if (a==4)
{fDivide()}
else if (a==5)
{fFactors()}
else if(a==6)
{fPrime()}
else
{
  warning("Please type 1-6 to select an operation.")
}
}
fadd <- function (){
  a=as.numeric(readline(prompt="Enter first number:"))
  b=as.numeric(readline(prompt="Enter second number:"))
  {
    c=paste(a,b,sep="+")
    d=a+b
    c=paste(c,"=",d,sep=" ")
    print(c)
  }
  else
  {
    print("please enter number.")
  }
  
}
fSubtract <- function (){
  a=as.numeric(readline(prompt="Enter first number:"))
  b=as.numeric(readline(prompt="Enter second number:"))
  c=paste(a,b,sep="-")
  c=paste(c,"=",a-b,sep=" ")
  print(c)
}
fMultiply <- function (){
  a=as.numeric(readline(prompt="Enter first number:"))
  b=as.numeric(readline(prompt="Enter second number:"))
  c=paste(a,b,sep="*")
  c=paste(c,"=",a*b,sep=" ")
  print(c)
}
fDivide <- function (){
  a=as.numeric(readline(prompt="Enter first number:"))
  b=as.numeric(readline(prompt="Enter second number:"))
  c=paste(a,b,sep="/")
  c=paste(c,"=",a/b,sep=" ")
  print(c)
}
fFactors <- function (){
  a=as.integer(readline(prompt="Enter the number:"))
  b=paste("The factors of",a, "are:")
  print(b)
  for (i in 1:a)
  {
    n=a%%i
    if (n==0)
    {
      print(i)
    }
  }
}
fPrime <- function (){
  a=as.integer(readline(prompt="Enter the number:"))
  
  
  c=c()
  for (i in 1:a)
  {
    n=a%%i
    if (n==0)
    {
      c=c(c,i)
    }
  }
  if (length(c)>3)
  {
    b=paste("The number of",a,"is not a prime.")
    print(b)
  }
    else
    {
      b=paste("The number of",a,"is a prime.")
      print(b)
    }
     
}

#calculator()

