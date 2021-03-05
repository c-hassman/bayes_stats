library("stats")


help(binom.test)

binom.test(128, 320, p = 0.5, alternative = "less", conf.level = 0.95)

help(pbeta)

pbeta(.5, 148 , 237 , lower.tail = FALSE)

pbeta(.5, 148 , 237 , lower.tail = TRUE)


help(qbeta)

qbeta(c(0.025, 0.975), 148 ,237)

qbeta(c(0.025, 0.975), 129, 193)

library("LearnBayes")
pbetap(c(129, 193), 25, 6)

l <- pbetap(c(129, 193), 25, 0:25)
print(l)

df <- data.frame("y" = 0:25, "Prob"=l)

df <- df[order(-df$Prob), ]
df$CumSum <- cumsum(df$Prob)

triplot(c(20,45), c(128,192))

p = seq(0,1, length=100)
# par(mfrow = c(5, 3), mai = c(0.5, 0.65, 0.2, 0.05))

par(mfrow = c(2,2), mai = c(0.5, 0.5, 0.5, 0.5))
plot(p, dbeta(p, 0.2, 0.1), ylab="density", type ="l", col="black",
     main = "Beta(0.1,0.1)", xlab = "")
plot(p, dbeta(p, 10, 2), ylab="density", type ="l", col="black",
     main = "Beta(10,2)", xlab = "")
plot(p, dbeta(p, 2, 10), ylab="density", type ="l", col="black",
     main = "Beta(2,10)", xlab = "")
plot(p, dbeta(p, 100, 100), ylab="density", type ="l", col="black",
     main = "Beta(100,100)", xlab = "")



qbeta(c(0.01, 0.99), 25 ,40)

pbeta(.5, 25 , 40 )#  , lower.tail = FALSE)

pbetap(c())
