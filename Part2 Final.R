complete <- function(directory, id = 1:332){
        results <- data.frame()
        files <- list.files(directory, full.names = T)
        temp <- data.frame()
        for (i in id){
                temp <- read.csv(files[i])
                nobs <-0
                for (n in 1:nrow(temp)){
                        if (is.na(temp$nitrate[n]) == F & is.na(temp$sulfate[n]) == F){
                                nobs <- nobs +1
                        }
                }
                results <- rbind(results, data.frame(i, nobs))
        }
return (results)
}
complete("Data", c(2, 4, 8, 10, 12))
test <- read.csv("Data/001.csv")
