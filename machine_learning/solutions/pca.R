# pca example solution
df.ul <- df %>%
  select(bill_length_mm, bill_depth_mm, flipper_length_mm, body_mass_g, sex)
df.ul$sex <- as.character(df.ul$sex)
df.ul$sex[df.ul$sex == "male"] <- 0
df.ul$sex[df.ul$sex == "female"] <- 1
df.ul$sex <- as.numeric(df.ul$sex)
df.norm <- as.data.frame(lapply(df.ul, nor))
df.corr <- cor(df.norm)
ggcorrplot(df.corr)
df.pca <- princomp(df.corr)
summary(df.pca)
df.pca$loadings
fviz_eig(df.pca, addlabels = T, barfill = "deepskyblue3", barcolor = "deepskyblue3")
fviz_pca_var(df.pca, col.var = "deepskyblue3")
fviz_pca_var(df.pca, col.var = "cos2",
             gradient.cols = c("deepskyblue4", "deepskyblue"),
             repel = T)