## copy the dataset
newDat <- dat

##set up the for loop to go through and fill in the interval if that spot is NA 
a = nrow(newDat)
b = nrow(aggbyInterval)

for (i in 1:a) {
  ## if the spot is empty
  if (is.na(newdat$steps[i])) {
    for (j in 1:b) 
    {
      if (newdat$interval[i] == aggbyInterval[j, 1])
      {
        newdat$steps[i] = aggbyInterval[j, 2]
      }
    } 
  }    
}

