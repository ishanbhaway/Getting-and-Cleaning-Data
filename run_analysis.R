##Download the file and unzip the file

download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip","UCI HAR Dataset.zip")
unzip("UCI HAR Dataset.zip")

##Getting the data
subject_test<-read.table(".\\UCI HAR Dataset\\test\\subject_test.txt")
X_test<-read.table(".\\UCI HAR Dataset\\test\\X_test.txt")
y_test<-read.table(".\\UCI HAR Dataset\\test\\y_test.txt")
subject_train<-read.table(".\\UCI HAR Dataset\\train\\subject_train.txt")
X_train<-read.table(".\\UCI HAR Dataset\\train\\X_train.txt")
y_train<-read.table(".\\UCI HAR Dataset\\train\\y_train.txt")
activity_labels<-read.table(".\\UCI HAR Dataset\\activity_labels.txt")
features<-read.table(".\\UCI HAR Dataset\\features.txt")


##Assigning the column names to dataset
colnames(X_test)<-features$V2
colnames(X_train)<-features$V2
colnames(subject_test)<-"SubjectID"
colnames(subject_train)<-"SubjectID"
colnames(y_test)<-"ActivityID"
colnames(y_train)<-"ActivityID"
colnames(activity_labels)<-c("ActivityID", "ActivityName")

##Combining all the datasets
testdata<-cbind(y_test,subject_test,X_test)
traindata<-cbind(y_train,subject_train,X_train)
fulldata<-rbind(testdata,traindata)
afulldata<-merge(activity_labels,fulldata)
##Getting the required complete data printed
write.table(afulldata,"Complete_data.txt")
write.table(afulldata,"Complete_data.csv")


##getting the required columns with means and standard deviations
ms_cols <- grep(".*mean\\(\\)|.*std\\(\\)", features[,2])
reddata<-afulldata[,c(1:3,ms_cols+3)]
ntdata <- aggregate(reddata[,3:length(reddata)],by=list(reddata$SubjectID, reddata$ActivityID),mean)
names(ntdata)[1:2] <- c("SubjectID", "ActivityID")
cntdata<-ntdata[,-1]
acntdata<-merge(activity_labels,cntdata)
##Getting the required tidy data printed
write.table(acntdata,"tidy_data.txt")
write.table(acntdata,"tidy_data.csv")
