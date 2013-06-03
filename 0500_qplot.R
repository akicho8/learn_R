# qplot は plot にインタフェースが似ていて内部では ggplot2 を使っている
library(ggplot2)
qplot(displ, hwy, data=mpg)             # 排気量(displ)とhwy(走れるマイル数)の関係？
