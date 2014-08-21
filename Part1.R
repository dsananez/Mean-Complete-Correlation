## Part 1

polutantmean <- function(directory, pollutant, id = 1:332){
        files <- list.files(directory, full.names = T)
        alldata <- data.frame()
        for (i in 1:length(files)){
                alldata <- rbind(alldata, read.csv(files[i]))
        }
        str(alldata)
        summary(alldata)
        
}

polutantmean("Data")
alldata <- data.frame()
files <- list.files("Data", full.names = T)
for (i in 1:length(files)){
        alldata <- rbind(alldata, read.csv(files[i]))
}
temp <- data.frame()
for (i in id){
        temp <- rbind(temp, read.csv(files[i]))
}
mean(temp$nitrate, na.rm=T)
