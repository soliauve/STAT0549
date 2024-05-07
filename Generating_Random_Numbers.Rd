#통계계산 pg. 57

n<- 1000 #aim is to generate 1000 variates.
k <- 0 #counter for accepted
j <- 0 #iterations
y <- numeric(n) #numeric vector of length n. In this case, y is a numberic vector of length 1000.

while(k < n){ #this condition checks wheter we have achieved the desired number of variates. 
	u <- runif(1) #generate one number from UNI(0,1)
	j <- j + 1 #increment iteration of the sampling(?)
	x <- runif(1) #generate one number from UNI(0,1) as a parameter for the Beta Distribution.
		if (x * (1-x) > u){  #if it satisfies this condition then it gets accepted.
		k <- k + 1
		y[k] <- x #x is the parameter for beta dist that gets accepted.
	}
}
j
y # Y~ UNI(0,1)