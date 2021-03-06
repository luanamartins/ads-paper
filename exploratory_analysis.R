histconn <- read.table("C:/Users/Lhwannah/Dropbox/artigo ads/data2/concurrent/php_500_requests_1000_pages_SPEED_DOWNLOAD.txt", dec=".")
maxValue <- max(histconn)
histconn <- sapply(histconn, as.numeric)
png("C:/Users/Lhwannah/Dropbox/artigo ads/plots/histogram/concurrent/SPEED_DOWNLOAD/php_500_requests_1000_pages_SPEED_DOWNLOAD.png")
hist(histconn, ylab="Frequência", xlab="Velocidade de transferência (B/s)", breaks=30, ylim=c(0, 300), main="Histograma do PHP para 1000 páginas")
dev.off()