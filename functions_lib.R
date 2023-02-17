library(data.table)
library(randomForestSRC)
library(randomForest)
library(lightgbm)
library(caret)
library(ggplot2) 
library(psych)
library(kableExtra)
library(gridExtra)
library(nloptr)


DT = fread("C:/Users/nicol/Downloads/fetal_helath/fetal_health.csv")
DT[,fetal_health2 := factor(fetal_health,labels = c("Normal","Suspect","Pathological"))]
DT[,fetal_health3 := factor(ifelse(fetal_health == 1,1,2),levels = c(1,2), labels = c("Normal","SP"))]
setnames(DT,"baseline value","baseline_value")

C3 = ggplot(DT, aes(x = fetal_health2, fill = fetal_health2)) +
  geom_bar() +
  scale_fill_hue(c = 40) +
  labs(title = "Fetus outcome - 3 classes") +
  theme_bw() + xlab("") + ylab("") +
  theme(legend.position="none",
        plot.title = element_text(hjust = 0.5))

C2 = ggplot(DT, aes(x = fetal_health3, fill = fetal_health3)) +
  geom_bar() +
  scale_fill_hue(c = 40) +
  labs(title = "Fetus outcome - 2 classes") +
  theme_bw() + xlab("") + ylab("") +
  theme(legend.position="none",
        plot.title = element_text(hjust = 0.5))








