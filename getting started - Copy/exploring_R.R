favorite_number <- 7
times <- c(6, 9, 8, 5, 7.5, 6.4, 6, 2.5, 5, 4, 7.5, 8, 8)
times
mean(times)
minutes <- 60 * times
minutes
rep(1, 13)
rep(1, 13) * 1:13

mean(times)
?mean
mean(c(times, NA), na.rm = TRUE)

sd(times)
range(times)
length(times)

times < 6
times == 5
times <= 7

(times < 4) | (times > 9)

any(c(TRUE, TRUE, FALSE))
all(c(TRUE, TRUE, FALSE))

which(times < 6)

times[1]
times[-1]
times[times >= 7]

times[2] <- NA
times
times[-5] == NA
times[>5]
times[times < 5] <- NA
times

head(mtcars)
tail(mtcars)
str(mtcars)
ncol(mtcars)
mtcars$cyl
mpg <- mtcars$mpg
mean(mpg)
mean(mtcars$mpg)
