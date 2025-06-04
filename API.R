library(ggplot2)
library(plumber)

netflix <- read.csv("C:/Users/nenek/Downloads/netflix.csv")

#* @param transform Tipo de transformación: "log" o "none"
#* @get /histograma
#* @serializer png
function(transform = "none") {
minutos <- na.omit(netflix$Minutes)
if(transform == "log"){
  minutos <- minutos[minutos>0]
  minutos <- log(minutos)
}

plot <- ggplot(data.frame(Minutes = minutos), aes(x= Minutes))+
  geom_histogram()
}

