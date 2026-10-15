
# ============================================================
# Script: analysis.R
# Purpose: Analyze murder rates and create visualizations
# ============================================================

# 1. Load the processed dataset
load("rda/murders_processed.rda")

# 2. Inspect the data
head(murders_processed)

str(murders_processed)

summary(murders_processed$murder_rate)

# ranking states by murder rate
murders_ranked <- murders_processed[order(murders_processed$murder_rate,
                                          decreasing = TRUE),]
# display the top 5 states with the highest murder rate
top5 <- head(murders_ranked, 5)
top5
top5[, c("state","murder_rate")]
library(ggplot2)
barplot(ggplot(top5, aes(x=reorder(state,murder_rate),y=murder_rate))+
          geom_col()+coord_flip()+labs(title = "States with highest 
                                       murder rate", x="states",
                                       y="murders per 100k pop"))+
  theme_minimal()

barplot <- ggplot(
  top5,
  aes(x = reorder(state, murder_rate), y = murder_rate)
) +
  geom_col() +
  coord_flip() +
  labs(
    title = "Five States with the Highest Murder Rates",
    x = "State",
    y = "Murders per 100,000 Population"
  ) +
  theme_minimal()
# Display the chart

print(barplot)

dir.exists("figs")
ggsave(filename = "figs/barplot.png",
       plot = barplot,
       width = 8,
       height = 6,
       dpi = 300)

list.files("figs")

# Project development notes
# Analysis completed
# Next steps - explore regional differences in murder rates













