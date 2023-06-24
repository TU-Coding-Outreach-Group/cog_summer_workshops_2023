# k-means clustering solution
ul.subset <- df.ul %>%
  select(body_mass_g, bill_depth_mm)
ggplot(data = df, aes(x = body_mass_g, y = bill_depth_mm, color = species, group = species)) +
  geom_point() +
  labs(x = "body mass (g)", y = "bill depth (mm)", title = "Penguin Bill Depth and Body Mass by Species") +
  plot.format
ggplot(data = df, aes(x = body_mass_g, y = bill_depth_mm, color = sex, group = sex)) +
  geom_point() +
  labs(x = "body mass (g)", y = "bill depth (mm)", title = "Penguin Bill Depth and Body Mass by Sex") +
  plot.format
set.seed(123)
k3 <- stats::kmeans(ul.subset, 3, nstart = 25)
str(k3)
k3
fviz_cluster(k3, data = ul.subset) + theme_classic()
k2 <- stats::kmeans(ul.subset, 2, nstart = 25)
str(k2)
k2
fviz_cluster(k2, data = ul.subset) + theme_classic()
fviz_nbclust(ul.subset, kmeans, method = "wss")
fviz_nbclust(ul.subset, kmeans, method = "silhouette")
gap_stat <- clusGap(ul.subset, FUN = kmeans, nstart = 25,
                    K.max = 10, B = 50)
fviz_gap_stat(gap_stat)
k1 <- kmeans(ul.subset, centers = 1, nstart = 25)
k2 <- kmeans(ul.subset, centers = 2, nstart = 25)
k3 <- kmeans(ul.subset, centers = 3, nstart = 25)
p1 <- fviz_cluster(k1, geom = "point", data = ul.subset) + ggtitle("k = 1") + theme_classic()
p2 <- fviz_cluster(k2, geom = "point", data = ul.subset) + ggtitle("k = 2") + theme_classic()
p3 <- fviz_cluster(k3, geom = "point", data = ul.subset) + ggtitle("k = 3") + theme_classic()
grid.arrange(p1, p2, p3, nrow = 1)
