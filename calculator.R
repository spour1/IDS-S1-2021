calculator <- function (){
print(gsub("\\\\","","******Simple R Calculator - Select operation: ******"))
print(gsub("\\\\","","1.Add"))
print(gsub("\\\\","","2.Subtract"))
print(gsub("\\\\","","3.Multiply"))
print(gsub("\\\\","","4.Divide"))
print(gsub("\\\\","","5.Factors"))
print(gsub("\\\\","","6.Prime"))
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
}
fadd <- function (){
  a=as.numeric(readline(prompt="Enter first number:"))
  b=as.numeric(readline(prompt="Enter second number:"))
  c=paste(a,b,sep="+")
  d=a+b
  c=paste(c,"=",d,sep=" ")
  print(c)
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
  a=as.numeric(readline(prompt="Enter the number:"))
}
fPrime <- function (){
  a=as.numeric(readline(prompt="Enter the number:"))
}
