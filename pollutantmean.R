pollutantmean <- function(directory, pollutant, id = 1:332){
        files <- list.files(directory, full.names = T)
        temp <- data.frame()
        for (i in id){
                temp <- rbind(temp, read.csv(files[i]))
        }
        mean(temp[,pollutant], na.rm=T)        
}
