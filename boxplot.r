
#Sequential - TOTAL_TIME

conn <- read.csv("C:/Users/Lhwannah/Dropbox/artigo ads/plots/csvFiles/sequential/TOTAL_TIME_100_pages.csv")
head(conn)
#png("C:/Users/Lhwannah/Dropbox/artigo ads/plots/boxplots/sequential/TOTAL_TIME/boxplot_TOTAL_TIME_100_pages.png")
boxplot(conn$value~conn$server,  ylim=c(0,4), names=c("Node.js","PHP"), ylab="Tempo total (ms)", 
        main="Boxplot das requisições sequenciais para 100 páginas")
#dev.off()

conn <- read.csv("C:/Users/Lhwannah/Dropbox/artigo ads/plots/csvFiles/sequential/TOTAL_TIME_1000_pages.csv")
head(conn)
#png("C:/Users/Lhwannah/Dropbox/artigo ads/plots/boxplots/sequential/TOTAL_TIME/boxplot_TOTAL_TIME_1000_pages.png")
boxplot(conn$value~conn$server,  ylim=c(5,25), names=c("Node.js","PHP"), ylab="Tempo total (ms)", 
        main="Boxplot das requisições sequenciais para 1000 páginas")
#dev.off()

#Sequential - CONNECT_TIME

conn <- read.csv("C:/Users/Lhwannah/Dropbox/artigo ads/plots/csvFiles/sequential/CONNECT_TIME_100_pages.csv")
head(conn)
#png("C:/Users/Lhwannah/Dropbox/artigo ads/plots/boxplots/sequential/CONNECT_TIME/boxplot_CONNECT_TIME_100_pages.png")
boxplot(conn$value~conn$server,  ylim=c(0,3), names=c("Node.js","PHP"), ylab="Tempo de conexão (s)", 
        main="Boxplot das requisições sequenciais para 100 páginas")
#dev.off()

conn <- read.csv("C:/Users/Lhwannah/Dropbox/artigo ads/plots/csvFiles/sequential/CONNECT_TIME_100_pages.csv")
head(conn)
png("C:/Users/Lhwannah/Dropbox/artigo ads/plots/boxplots/sequential/CONNECT_TIME/boxplot_CONNECT_TIME_100_pages_zoom_mean.png")
boxplot(conn$value~conn$server,  ylim=c(0.0,0.15), names=c("Node.js","PHP"), ylab="Tempo de conexão (s)", 
        main="Boxplot das requisições sequenciais para 100 páginas")
dev.off()

conn <- read.csv("C:/Users/Lhwannah/Dropbox/artigo ads/plots/csvFiles/sequential/CONNECT_TIME_1000_pages.csv")
head(conn)
#png("C:/Users/Lhwannah/Dropbox/artigo ads/plots/boxplots/sequential/CONNECT_TIME/boxplot_CONNECT_TIME_1000_pages.png")
boxplot(conn$value~conn$server,  names=c("Node.js","PHP"), ylab="Tempo de conexão (s)", 
        main="Boxplot das requisições sequenciais para 1000 páginas")
#dev.off()

# Sequential - SPEED_DOWNLOAD

conn <- read.csv("C:/Users/Lhwannah/Dropbox/artigo ads/plots/csvFiles/sequential/SPEED_DOWNLOAD_100_pages_processed.csv")
head(conn)
png("C:/Users/Lhwannah/Dropbox/artigo ads/plots/boxplots/sequential/SPEED_DOWNLOAD/boxplot_SPEED_DOWNLOAD_100_pages_processed.png")
boxplot(conn$value~conn$server, names=c("Node.js","PHP"), ylab="Velocidade de transferência (KB/s)", 
        main="Boxplot das requisições sequenciais para 100 páginas")
dev.off()

conn <- read.csv("C:/Users/Lhwannah/Dropbox/artigo ads/plots/csvFiles/sequential/SPEED_DOWNLOAD_1000_pages_processed.csv")
head(conn)
#png("C:/Users/Lhwannah/Dropbox/artigo ads/plots/boxplots/sequential/SPEED_DOWNLOAD/boxplot_SPEED_DOWNLOAD_1000_pages_processed.png")
boxplot(conn$value~conn$server,  names=c("Node.js","PHP"), ylab="Velocidade de transferência (KB/s)", 
        main="Boxplot das requisições sequenciais para 1000 páginas")
#dev.off()

#------------------------------------------------------------------------------------------------------------------------------------------------------------------#

#Concurrent - TOTAL_TIME

conn <- read.csv("C:/Users/Lhwannah/Dropbox/artigo ads/plots/csvFiles/concurrent/TOTAL_TIME_100_pages.csv")
head(conn)
#png("C:/Users/Lhwannah/Dropbox/artigo ads/plots/boxplots/concurrent/TOTAL_TIME/boxplot_TOTAL_TIME_100_pages.png")
boxplot(conn$value~conn$server, names=c("Node.js","PHP"), ylab="Tempo total (ms)", 
        main="Boxplot das requisições concorrentes para 100 páginas")
#dev.off()

conn <- read.csv("C:/Users/Lhwannah/Dropbox/artigo ads/plots/csvFiles/concurrent/TOTAL_TIME_1000_pages.csv")
head(conn)
#png("C:/Users/Lhwannah/Dropbox/artigo ads/plots/boxplots/concurrent/TOTAL_TIME/boxplot_TOTAL_TIME_1000_pages.png")
boxplot(conn$value~conn$server,  ylim=c(0, 120), names=c("Node.js","PHP"), ylab="Tempo total (ms)", 
        main="Boxplot das requisições concorrentes para 1000 páginas")
#dev.off()

#Concurrent - CONNECT_TIME

conn <- read.csv("C:/Users/Lhwannah/Dropbox/artigo ads/plots/csvFiles/concurrent/CONNECT_TIME_100_pages.csv")
head(conn)
#png("C:/Users/Lhwannah/Dropbox/artigo ads/plots/boxplots/concurrent/CONNECT_TIME/boxplot_CONNECT_TIME_100_pages.png")
boxplot(conn$value~conn$server, names=c("Node.js","PHP"), ylab="Tempo de conexão (s)", 
        main="Boxplot das requisições concorrentes para 100 páginas")
#dev.off()

conn <- read.csv("C:/Users/Lhwannah/Dropbox/artigo ads/plots/csvFiles/concurrent/CONNECT_TIME_1000_pages.csv")
head(conn)
#png("C:/Users/Lhwannah/Dropbox/artigo ads/plots/boxplots/concurrent/CONNECT_TIME/boxplot_CONNECT_TIME_1000_pages.png")
boxplot(conn$value~conn$server,  ylim=c(0, 10), names=c("Node.js","PHP"), ylab="Tempo de conexão (s)", 
        main="Boxplot das requisições concorrentes para 1000 páginas")
#dev.off()

# Concurrent - SPEED_DOWNLOAD

conn <- read.csv("C:/Users/Lhwannah/Dropbox/artigo ads/plots/csvFiles/concurrent/SPEED_DOWNLOAD_100_pages_processed.csv")
head(conn)
png("C:/Users/Lhwannah/Dropbox/artigo ads/plots/boxplots/concurrent/SPEED_DOWNLOAD/boxplot_SPEED_DOWNLOAD_100_pages_processed.png")
boxplot(conn$value~conn$server, names=c("Node.js","PHP"), ylab="Velocidade de transferência (KB/s)", 
        main="Boxplot das requisições sequenciais para 100 páginas")
dev.off()


conn <- read.csv("C:/Users/Lhwannah/Dropbox/artigo ads/plots/csvFiles/concurrent/SPEED_DOWNLOAD_100_pages_processed.csv")
head(conn)
png("C:/Users/Lhwannah/Dropbox/artigo ads/plots/boxplots/concurrent/SPEED_DOWNLOAD/boxplot_SPEED_DOWNLOAD_100_pages_processed_zoom_mean.png")
boxplot(conn$value~conn$server, ylim=c(0, 4), names=c("Node.js","PHP"), ylab="Velocidade de transferência (KB/s)", 
        main="Boxplot das requisições sequenciais para 100 páginas")
dev.off()


conn <- read.csv("C:/Users/Lhwannah/Dropbox/artigo ads/plots/csvFiles/concurrent/SPEED_DOWNLOAD_1000_pages_processed.csv")
head(conn)
png("C:/Users/Lhwannah/Dropbox/artigo ads/plots/boxplots/concurrent/SPEED_DOWNLOAD/boxplot_SPEED_DOWNLOAD_1000_pages_processed.png")
boxplot(conn$value~conn$server, ylim=c(0, 1000), names=c("Node.js","PHP"), ylab="Velocidade de transferência (KB/s)", 
        main="Boxplot das requisições sequenciais para 1000 páginas")
dev.off()

conn <- read.csv("C:/Users/Lhwannah/Dropbox/artigo ads/plots/csvFiles/concurrent/SPEED_DOWNLOAD_1000_pages_processed.csv")
head(conn)
png("C:/Users/Lhwannah/Dropbox/artigo ads/plots/boxplots/concurrent/SPEED_DOWNLOAD/boxplot_SPEED_DOWNLOAD_1000_pages_processed_zoom_mean.png")
boxplot(conn$value~conn$server, ylim=c(0, 4), names=c("Node.js","PHP"), ylab="Velocidade de transferência (KB/s)", 
        main="Boxplot das requisições sequenciais para 1000 páginas")
dev.off()





