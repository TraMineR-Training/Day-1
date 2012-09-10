## 1.Starting with R and TraMineR
library(TraMineR)
?biofam
head(biofam)
seq.biofam<-seqdef(biofam[,10:25])
seqIplot(seq.biofam)
## All the state sequences in the sample are represented but they are not sorted
seqfplot(seq.biofam)
## The 10 most frequent states in the database. They represent 20.6% of the whole sample. The most frequent state sequence is the state 0 (the green one, living with parents)
seqdplot(seq.biofam)
## It gives us a transversal view of the most frequent states distribution from 15 years old to 30 years old for the whole sample
seqiplot(seq.biofam)
## We have the first 10 state sequences of the database, ie. the life trajectories of 10 different individuals
seq.biofam[1:10,]
print(seq.biofam[1:10, ], format = "SPS")

## 2.Describe the sequence data you plan to use by specifying:
## See attached word document



