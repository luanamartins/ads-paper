# Lnks:
# http://www.r-bloggers.com/box-plot-with-r-tutorial/
# https://stat.ethz.ch/R-manual/R-devel/library/graphics/html/hist.html

# Sequencial - CONNECT_TIME

#Node.js

histconn <- read.table("C:/Users/Lhwannah/Dropbox/artigo ads/data2/sequential/nodejs_500_requests_100_pages_CONNECT_TIME.txt", dec=".")
maxValue <- max(histconn)
histconn <- sapply(histconn, as.numeric)
#png("C:/Users/Lhwannah/Dropbox/artigo ads/plots/histogram/sequential/CONNECT_TIME/nodejs_500_requests_100_pages_CONNECT_TIME.png")
hist(histconn, ylab="Frequência", xlab="Tempo de conexão (s)", breaks=300, xlim=c(0.0, 0.15), ylim=c(0, 300), main="Histograma do Node.js para 100 páginas")
#dev.off()

histconn <- read.table("C:/Users/Lhwannah/Dropbox/artigo ads/data2/sequential/nodejs_500_requests_1000_pages_CONNECT_TIME.txt", dec=".")
maxValue <- max(histconn)
histconn <- sapply(histconn, as.numeric)
png("C:/Users/Lhwannah/Dropbox/artigo ads/plots/histogram/sequential/CONNECT_TIME/nodejs_500_requests_1000_pages_CONNECT_TIME.png")
hist(histconn, ylab="Frequência", xlab="Tempo de conexão (s)",  xlim=c(0.0, 0.15), ylim=c(0, 300), main="Histograma do Node.js para 1000 páginas")
dev.off()

#PHP
histconn <- read.table("C:/Users/Lhwannah/Dropbox/artigo ads/data2/sequential/php_500_requests_100_pages_CONNECT_TIME.txt", dec=".")
maxValue <- max(histconn)
histconn <- sapply(histconn, as.numeric)
png("C:/Users/Lhwannah/Dropbox/artigo ads/plots/histogram/sequential/CONNECT_TIME/php_500_requests_100_pages_CONNECT_TIME.png")
hist(histconn, ylab="Frequência", xlab="Tempo de conexão (s)", breaks=20, xlim=c(0.0, 0.1), ylim=c(0, 300), main="Histograma do PHP para 100 páginas")
dev.off()

histconn <- read.table("C:/Users/Lhwannah/Dropbox/artigo ads/data2/sequential/php_500_requests_1000_pages_CONNECT_TIME.txt", dec=".")
maxValue <- max(histconn)
histconn <- sapply(histconn, as.numeric)
#png("C:/Users/Lhwannah/Dropbox/artigo ads/plots/histogram/sequential/CONNECT_TIME/php_500_requests_1000_pages_CONNECT_TIME.png")
hist(histconn, ylab="Frequência", xlab="Tempo de conexão (s)", breaks=300, xlim=c(0.0, 0.15), ylim=c(0, 300), main="Histograma do PHP para 1000 páginas")
#dev.off()


# Sequencial - TOTAL_TIME


#Node.js

histconn <- read.table("C:/Users/Lhwannah/Dropbox/artigo ads/data2/sequential/nodejs_500_requests_100_pages_TOTAL_TIME.txt", dec=".")
maxValue <- max(histconn)
histconn <- sapply(histconn, as.numeric)
png("C:/Users/Lhwannah/Dropbox/artigo ads/plots/histogram/sequential/TOTAL_TIME/nodejs_500_requests_100_pages_TOTAL_TIME.png")
hist(histconn, ylab="Frequência", xlab="Tempo total (ms)", breaks=50, xlim=c(0.5, 3), ylim=c(0, 300), main="Histograma do Node.js para 100 páginas")
dev.off()

histconn <- read.table("C:/Users/Lhwannah/Dropbox/artigo ads/data2/sequential/nodejs_500_requests_1000_pages_TOTAL_TIME.txt", dec=".")
maxValue <- max(histconn)
histconn <- sapply(histconn, as.numeric)
png("C:/Users/Lhwannah/Dropbox/artigo ads/plots/histogram/sequential/TOTAL_TIME/nodejs_500_requests_1000_pages_TOTAL_TIME.png")
hist(histconn, ylab="Frequência", xlab="Tempo total (ms)", breaks=80, xlim=c(5, 16),  ylim=c(0, 300), main="Histograma do Node.js para 1000 páginas")
dev.off()

#PHP
histconn <- read.table("C:/Users/Lhwannah/Dropbox/artigo ads/data2/sequential/php_500_requests_100_pages_TOTAL_TIME.txt", dec=".")
maxValue <- max(histconn)
histconn <- sapply(histconn, as.numeric)
png("C:/Users/Lhwannah/Dropbox/artigo ads/plots/histogram/sequential/TOTAL_TIME/php_500_requests_100_pages_TOTAL_TIME.png")
hist(histconn, ylab="Frequência", xlab="Tempo total (ms)", breaks=20, xlim=c(0, 2), ylim=c(0, 400), main="Histograma do PHP para 100 páginas")
dev.off()

histconn <- read.table("C:/Users/Lhwannah/Dropbox/artigo ads/data2/sequential/php_500_requests_1000_pages_TOTAL_TIME.txt", dec=".")
maxValue <- max(histconn)
histconn <- sapply(histconn, as.numeric)
png("C:/Users/Lhwannah/Dropbox/artigo ads/plots/histogram/sequential/TOTAL_TIME/php_500_requests_1000_pages_TOTAL_TIME.png")
hist(histconn, ylab="Frequência", xlab="Tempo total (ms)", breaks=100, xlim=c(5, 25), ylim=c(0, 200), main="Histograma do PHP para 1000 páginas")
dev.off()

# Sequencial - SPEED_DOWNLOAD

histconn <- read.table("C:/Users/Lhwannah/Dropbox/artigo ads/data2/sequential/nodejs_500_requests_100_pages_SPEED_DOWNLOAD_processed.txt", dec=".")
maxValue <- max(histconn)
histconn <- sapply(histconn, as.numeric)
png("C:/Users/Lhwannah/Dropbox/artigo ads/plots/histogram/sequential/SPEED_DOWNLOAD/nodejs_500_requests_100_pages_SPEED_DOWNLOAD_processed.png")
hist(histconn, ylab="Frequência", xlab="Velocidade de transferência (KB/s)", xlim=c(0, 1000), ylim=c(0, 400), breaks=5, main="Histograma do Node.js para 100 páginas")
dev.off()

histconn <- read.table("C:/Users/Lhwannah/Dropbox/artigo ads/data2/sequential/nodejs_500_requests_1000_pages_SPEED_DOWNLOAD_processed.txt", dec=".")
maxValue <- max(histconn)
histconn <- sapply(histconn, as.numeric)
png("C:/Users/Lhwannah/Dropbox/artigo ads/plots/histogram/sequential/SPEED_DOWNLOAD/nodejs_500_requests_1000_pages_SPEED_DOWNLOAD_processed.png")
hist(histconn, ylab="Frequência", xlab="Velocidade de transferência (KB/s)", breaks=10, xlim=c(200, 900), main="Histograma do Node.js para 1000 páginas")
dev.off()

#PHP
histconn <- read.table("C:/Users/Lhwannah/Dropbox/artigo ads/data2/sequential/php_500_requests_100_pages_SPEED_DOWNLOAD_processed.txt", dec=".")
maxValue <- max(histconn)
histconn <- sapply(histconn, as.numeric)
png("C:/Users/Lhwannah/Dropbox/artigo ads/plots/histogram/sequential/SPEED_DOWNLOAD/php_500_requests_100_pages_SPEED_DOWNLOAD_processed.png")
hist(histconn, ylab="Frequência", xlab="Velocidade de transferência (KB/s)", breaks=10, xlim=c(200, 800), ylim=c(0, 250), main="Histograma do PHP para 100 páginas")
dev.off()

histconn <- read.table("C:/Users/Lhwannah/Dropbox/artigo ads/data2/sequential/php_500_requests_1000_pages_SPEED_DOWNLOAD_processed.txt", dec=".")
maxValue <- max(histconn)
histconn <- sapply(histconn, as.numeric)
png("C:/Users/Lhwannah/Dropbox/artigo ads/plots/histogram/sequential/SPEED_DOWNLOAD/php_500_requests_1000_pages_SPEED_DOWNLOAD_processed.png")
hist(histconn, ylab="Frequência", xlab="Velocidade de transferência (KB/s)", breaks=10,  main="Histograma do PHP para 1000 páginas")
dev.off()


# Concurrent - CONNECT_TIME

#Node.js

histconn <- read.table("C:/Users/Lhwannah/Dropbox/artigo ads/data2/concurrent/nodejs_500_requests_100_pages_CONNECT_TIME.txt", dec=".")
maxValue <- max(histconn)
histconn <- sapply(histconn, as.numeric)
png("C:/Users/Lhwannah/Dropbox/artigo ads/plots/histogram/concurrent/CONNECT_TIME/nodejs_500_requests_100_pages_CONNECT_TIME.png")
hist(histconn, ylab="Frequência", xlab="Tempo de conexão (s)", breaks=10, xlim=c(0, 15), ylim=c(0, 300), main="Histograma do Node.js para 100 páginas")
dev.off()

histconn <- read.table("C:/Users/Lhwannah/Dropbox/artigo ads/data2/concurrent/nodejs_500_requests_1000_pages_CONNECT_TIME.txt", dec=".")
maxValue <- max(histconn)
histconn <- sapply(histconn, as.numeric)
png("C:/Users/Lhwannah/Dropbox/artigo ads/plots/histogram/concurrent/CONNECT_TIME/nodejs_500_requests_1000_pages_CONNECT_TIME.png")
hist(histconn, ylab="Frequência", xlab="Tempo de conexão (s)", breaks=10, xlim=c(0, 10), ylim=c(0, 300),  main="Histograma do Node.js para 1000 páginas")
dev.off()

#PHP
histconn <- read.table("C:/Users/Lhwannah/Dropbox/artigo ads/data2/concurrent/php_500_requests_100_pages_CONNECT_TIME.txt", dec=".")
maxValue <- max(histconn)
histconn <- sapply(histconn, as.numeric)
png("C:/Users/Lhwannah/Dropbox/artigo ads/plots/histogram/concurrent/CONNECT_TIME/php_500_requests_100_pages_CONNECT_TIME.png")
hist(histconn, ylab="Frequência", xlab="Tempo de conexão (s)", breaks=10, xlim=c(0.0, 10), ylim=c(0, 250), main="Histograma do PHP para 100 páginas")
dev.off()


histconn <- read.table("C:/Users/Lhwannah/Dropbox/artigo ads/data2/concurrent/php_500_requests_1000_pages_CONNECT_TIME.txt", dec=".")
maxValue <- max(histconn)
histconn <- sapply(histconn, as.numeric)
png("C:/Users/Lhwannah/Dropbox/artigo ads/plots/histogram/concurrent/CONNECT_TIME/php_500_requests_1000_pages_CONNECT_TIME.png")
hist(histconn, ylab="Frequência", xlab="Tempo de conexão (s)", breaks=10, xlim=c(0, 10), ylim=c(0, 250), main="Histograma do PHP para 1000 páginas")
dev.off()


# Concurrent - TOTAL_TIME 


#Node.js

histconn <- read.table("C:/Users/Lhwannah/Dropbox/artigo ads/data2/concurrent/nodejs_500_requests_100_pages_TOTAL_TIME.txt", dec=".")
maxValue <- max(histconn)
histconn <- sapply(histconn, as.numeric)
png("C:/Users/Lhwannah/Dropbox/artigo ads/plots/histogram/concurrent/TOTAL_TIME/nodejs_500_requests_100_pages_TOTAL_TIME.png")
hist(histconn, ylab="Frequência", xlab="Tempo total (ms)", breaks=20, xlim=c(0.5, 20), ylim=c(0, 100), main="Histograma do Node.js para 100 páginas")
dev.off()

histconn <- read.table("C:/Users/Lhwannah/Dropbox/artigo ads/data2/concurrent/nodejs_500_requests_1000_pages_TOTAL_TIME.txt", dec=".")
maxValue <- max(histconn)
histconn <- sapply(histconn, as.numeric)
png("C:/Users/Lhwannah/Dropbox/artigo ads/plots/histogram/concurrent/TOTAL_TIME/nodejs_500_requests_1000_pages_TOTAL_TIME.png")
hist(histconn, ylab="Frequência", xlab="Tempo total (ms)", breaks=10, xlim=c(0, 25),  ylim=c(0, 150), main="Histograma do Node.js para 1000 páginas")
dev.off()

#PHP
histconn <- read.table("C:/Users/Lhwannah/Dropbox/artigo ads/data2/concurrent/php_500_requests_100_pages_TOTAL_TIME.txt", dec=".")
maxValue <- max(histconn)
histconn <- sapply(histconn, as.numeric)
png("C:/Users/Lhwannah/Dropbox/artigo ads/plots/histogram/concurrent/TOTAL_TIME/php_500_requests_100_pages_TOTAL_TIME.png")
hist(histconn, ylab="Frequência", xlab="Tempo total (ms)", breaks=20, xlim=c(0, 125), ylim=c(0, 150), main="Histograma do PHP para 100 páginas")
dev.off()

histconn <- read.table("C:/Users/Lhwannah/Dropbox/artigo ads/data2/concurrent/php_500_requests_1000_pages_TOTAL_TIME.txt", dec=".")
maxValue <- max(histconn)
histconn <- sapply(histconn, as.numeric)
png("C:/Users/Lhwannah/Dropbox/artigo ads/plots/histogram/concurrent/TOTAL_TIME/php_500_requests_1000_pages_TOTAL_TIME.png")
hist(histconn, ylab="Frequência", xlab="Tempo total (ms)", breaks=10, xlim=c(0, 125), ylim=c(0, 150), main="Histograma do PHP para 1000 páginas")
dev.off()


# Concurrent - SPEED_DOWNLOAD

histconn <- read.table("C:/Users/Lhwannah/Dropbox/artigo ads/data2/concurrent/nodejs_500_requests_100_pages_SPEED_DOWNLOAD.txt", dec=".")
maxValue <- max(histconn)
histconn <- sapply(histconn, as.numeric)
png("C:/Users/Lhwannah/Dropbox/artigo ads/plots/histogram/concurrent/SPEED_DOWNLOAD/nodejs_500_requests_100_pages_SPEED_DOWNLOAD.png")
hist(histconn, ylab="Frequência", xlab="Velocidade de transferência (B/s)", xlim=c(0, 3500), ylim=c(0, 300), breaks=50, main="Histograma do Node.js para 100 páginas")
dev.off()


histconn <- read.table("C:/Users/Lhwannah/Dropbox/artigo ads/data2/concurrent/nodejs_500_requests_1000_pages_SPEED_DOWNLOAD.txt", dec=".")
maxValue <- max(histconn)
histconn <- sapply(histconn, as.numeric)
png("C:/Users/Lhwannah/Dropbox/artigo ads/plots/histogram/concurrent/SPEED_DOWNLOAD/nodejs_500_requests_1000_pages_SPEED_DOWNLOAD.png")
hist(histconn, ylab="Frequência", xlab="Velocidade de transferência (B/s)", breaks=5, main="Histograma do Node.js para 1000 páginas")
dev.off()

#PHP
histconn <- read.table("C:/Users/Lhwannah/Dropbox/artigo ads/data2/concurrent/php_500_requests_100_pages_SPEED_DOWNLOAD.txt", dec=".")
maxValue <- max(histconn)
histconn <- sapply(histconn, as.numeric)
png("C:/Users/Lhwannah/Dropbox/artigo ads/plots/histogram/concurrent/SPEED_DOWNLOAD/php_500_requests_100_pages_SPEED_DOWNLOAD.png")
hist(histconn, ylab="Frequência", xlab="Velocidade de transferência (B/s)", breaks=300, xlim=c(0, 4000), ylim=c(0, 300), main="Histograma do PHP para 100 páginas")
dev.off()

histconn <- read.table("C:/Users/Lhwannah/Dropbox/artigo ads/data2/concurrent/php_500_requests_1000_pages_SPEED_DOWNLOAD.txt", dec=".")
maxValue <- max(histconn)
histconn <- sapply(histconn, as.numeric)
png("C:/Users/Lhwannah/Dropbox/artigo ads/plots/histogram/concurrent/SPEED_DOWNLOAD/php_500_requests_1000_pages_SPEED_DOWNLOAD.png")
hist(histconn, ylab="Frequência", xlab="Velocidade de transferência (B/s)", breaks=30, ylim=c(0, 300), main="Histograma do PHP para 1000 páginas")
dev.off()





