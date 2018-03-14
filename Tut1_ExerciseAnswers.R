x<-0
for(i in 1:5){
  x<-x+(i/5)
}
x


a=0
b=0
myevenodd = function(x){
  for(i in 1:x){
    if(i %% 2 == 0){
      a<-a+i
    } else {
      b<-b+i
    }
  }
  sprintf("Sum of even numbers: %d, Sum of odd numbers: %d", a, b)
}

myevenodd(12)

