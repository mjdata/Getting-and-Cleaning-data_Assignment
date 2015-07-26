download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip", "data.zip")
unzip("data.zip")
read_data<- function(dataset_in)
{
  dd<- read.table("./UCI HAR Dataset/features.txt")
  k<-1
  
  ## Extracting feature names and numbers along with that of activity
  feature.no<- integer()
  for(i in 1:nrow(dd))
  {
    x<- grepl("std()|mean()", as.character(dd$V2[i]))
    z<- grepl("meanFreq()", as.character(dd$V2[i]))
    if(x== TRUE && z== FALSE)
    {
      feature.no[k]<- i
      k<- k+1
    }
  }
  feature.names<- as.character(dd[feature.no,2])
  activity.names<- as.character(read.table("./UCI HAR Dataset/activity_labels.txt")[,2])
  activity.no<- as.integer(read.table("./UCI HAR Dataset/activity_labels.txt")[,1])
  
  ## Reading the subject names
  fil.name<- paste("subject_",dataset_in,".txt", sep="")
  dir<- file.path(".","UCI HAR Dataset",dataset_in,fil.name)
  subj<- read.table(dir)
  names(subj)<- "subject"
  
  ## Reading the datasets
  fil.name<- paste("X_",dataset_in,".txt", sep="")
  dir<- file.path(".","UCI HAR Dataset",dataset_in,fil.name)
  dat<- read.table(dir)[,feature.no]
  names(dat)<- feature.names
  
  ## Reading the activity
  fil.name<- paste("y_",dataset_in,".txt", sep="")
  dir<- file.path(".","UCI HAR Dataset",dataset_in,fil.name)
  act<- read.table(dir)
  names(act)<- "activity"
  act$activity <- factor(act$activity, levels = activity.no, labels = activity.names)
  
  ##Storing clean data
  return (clean.data<- cbind(subj, act, dat))
}

#Reading Test and Train data separately
test_dat<- read_data("test")
train_dat<- read_data("train")

##Combining test and train data
all_dat<- rbind(test_dat, train_dat)

library(reshape2)

## Melting
all_dat_melted <- melt(all_dat, id = c("activity","subject"))

##Dcasting
all_dat_dcast <- dcast(all_dat_melted, activity + subject ~ variable, mean)

## Storing a txt and csv of cleaned file
write.csv(all_dat_dcast, "cleaned_data.csv", row.names = FALSE)
write.table(all_dat_dcast, "cleaned_data.txt", row.names = FALSE)