set.seed(123)

media <- runif(1, -10, 10)
desv <- runif(1, 5, 20)

x <- rnorm(100, mean = media, sd = desv)

media.1 <- runif(1, -10, 10)
desv.1 <- runif(1, 5, 20)

x1 <- rnorm(100, mean = media.1, sd = desv.1)

#Intervalos para x
med.x <- mean(x)
des.x <- sd(x)

med.x + 1.96*des.x/sqrt(length(x))
med.x - 1.96*des.x/sqrt(length(x))

#Intervalos para x1
med.x1 <- mean(x1)
des.x1 <- sd(x1)

med.x1 + 1.96*des.x1/sqrt(length(x1))
med.x1 - 1.96*des.x1/sqrt(length(x1))

#Graficos
plot(density(x))
abline(v = med.x, col = "red")
abline(v = c( med.x + 1.96*des.x/sqrt(length(x)),
              med.x - 1.96*des.x/sqrt(length(x))),
       col = "red", lty = 2)

plot(density(x1))
abline(v = med.x1, col = "red")
abline(v = c( med.x1 + 1.96*des.x1/sqrt(length(x1)),
              med.x1 - 1.96*des.x1/sqrt(length(x1))),
       col = "red", lty = 2)


##

tabla <- data.frame(x = c(med.x, med.x1),
                    x.inf = c(med.x - 1.96*des.x/sqrt(length(x)),
                              med.x1 - 1.96*des.x1/sqrt(length(x1))),
                    x.sup = c(med.x + 1.96*des.x/sqrt(length(x)),
                              med.x1 + 1.96*des.x1/sqrt(length(x1))),
                    vari = c("a", "b"))
library(ggplot2)

ggplot(tabla) + geom_point(aes(x = vari, y = x)) +
  geom_linerange(aes(x = vari,  ymin = x.inf, ymax = x.sup))


data("PlantGrowth")
