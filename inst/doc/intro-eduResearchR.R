## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----setup--------------------------------------------------------------------
library(eduResearchR)
library(dplyr)
library(ggplot2)
library(knitr)

## ----example------------------------------------------------------------------
data("STARplus")
head(STARplus, 5)

## ----mathachieve-data---------------------------------------------------------
data("MathAchieve")
head(MathAchieve, 5)

## ----mathachieve-variables----------------------------------------------------
variables <- data.frame(
  Variable = names(MathAchieve)
)

knitr::kable(
  variables,
  caption = "Variables included in the MathAchieve dataset"
)

## ----mathachieve-plot, fig.width=7, fig.height=5------------------------------
ggplot(MathAchieve, aes(x = SES, y = MathAch)) +
  geom_point(alpha = 0.5) +
  geom_smooth(method = "lm", se = TRUE) +
  labs(
    title = "Socioeconomic Status and Mathematics Achievement",
    subtitle = "MathAchieve dataset",
    x = "Socioeconomic Status (SES)",
    y = "Mathematics Achievement"
  ) +
  theme_minimal()

