plotname <- function(namelist)
{
  if(length(namelist)>1)
    n2 <- iname[iname$Name %in% namelist,] else
      n2 <- iname[iname$Name == namelist,]
  n3 <- aggregate(TotalProp~Year,n2,sum)
  title <- ifelse(length(namelist)>1,paste(namelist,collapse='/'),namelist)
  p <- qplot(Year,TotalProp*100,data=n3,ylab="Popularity (%)",main=title) + theme_bw(24)
  return(p)
}