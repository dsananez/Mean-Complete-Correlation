corr <- function(directory, threshold = 0) {
        files <- list.files(directory, full.names = T)
        temp <- data.frame()
        results <- vector()
        for (i in 1:332){
                temp1 <- read.csv(files[i])
                temp <- data.frame(cbind(sulfate = temp1$sulfate, nitrate = temp1$nitrate))
                cpl <- complete.cases(temp)
                if (sum(complete.cases(temp)) > threshold){
                        tempcor <- cor(temp$sulfate[cpl], temp$nitrate[cpl])
                        results <- append(results, tempcor)
                }
        }
        return(results)
}

