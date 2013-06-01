library(ggplot2)
library(graphics)

height <- c(160, 162, 170)
weight <- c(50, 51, 65)
mean(height)                    # 身長の平均
sd(weight)                      # 体重の標準偏差
cor(weight, height)             # 線形相関(身長は体重にどれだけ関係するか)
qplot(weight, height)
plot(weight, height)
