dataset = read.csv('Mall_Customers.csv')
dataset = dataset[4:5]

dendrogram = hclust(d=dist(dataset, method='euclidean')
                    , method='ward.D')
plot(dendrogram,
     main = paste('Dendrogram'),
     xlab='Customers',
     ylab = 'Euclidean Distance')


hc = hclust(d=dist(dataset, method='euclidean'), method='ward.D')
y_hc = cutree(hc,5)


library(cluster)
?clusplot
clusplot(dataset, 
         y_hc, 
         lines=0,
         shade = TRUE,
         color = TRUE,
         labels = 2,
         plotchar = FALSE,
         span = TRUE,
         main = paste('Clusters of customers'),
         xlab = 'Annual Income',
         ylab = 'Spending Score')