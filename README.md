# Two-Way-ANOVA-Arabidopsis-Thaliana
Two-way Analysis of Variance (ANOVA) examining the effects of mycorrhizal treatment (binary independent variable) and fertilizer level (independent variable) on biomass (dependent variable). Conducted using a publicly available dataset.
## Research question
How do Mycorrhizae presence (Myco), Fertilizer level (Fertilizer), and their interaction affect the biomass of Arabidopsis thaliana?
## Data
Publicly available data (Getman-Pickering et al., 2021); Experiment 1 dataset was used
## Null Hypothesis (H0)
There will be no difference in the mean biomass of A. thaliana across different treatment groups 
## Treatment Groups
High Fertilizer Level, Mycorrhizae 
High Fertilizer Level, No Mycorrhizae
Medium Fertilizer Level, Mycorrhizae
Medium Fertilizer Level, No Mycorrhizae
Low Fertilizer Level, Mycorrhizae
Low Fertilizer Level, No Mycorrhizae
## Pre-analysis Checks and ANOVA Assumptions
Before running ANOVA, the following steps are performed:
1.	Missing Values Check: Identify missing data using colSums().
2.	Data Types: Ensure Fertilizer and Myco are treated as categorical variables as.factor(df$Fertilizer) and as.factor(df$Myco).
3.	Model Assumptions:
•	Fit linear model (lm).

•	Check residual diagnostic plots (Plots 1 and 2: Residuals vs Fitted, Normal Q-Q). Plot 1: Values should be shattered across 0, plot 2: values should form a diagonal

•	Test normality using Shapiro-Wilk test (shapiro.test).
## Statistical Analysis and Effects
ANOVA was conducted alongside Eta-squared (2) for effect sizes and Tukey HSD for post-hoc pairwise comparisons.
1. Main Effects Summary
•	Fertilizer Level:
•	Effect Size (2): 0.48 
•	Pairwise Comparisons (Tukey HSD):
•	Low vs High: p=0e+00, Statistically Significant
•	Medium vs High: p =3e-07, Statistically Significant
•	Medium vs Low: p=0e+00, statistically significant
•	Mycorrhizae Presence (Myco):
•	Effect Size (2): 2.71e-03

•	Tukey HSD: p=0.3610083, Insignificant overall main effect
2. Interaction Effect (Fertilizer : Myco)
•	Effect Size (2): 0.09 — Statistically Significant
•	Conclusion: The effect of Mycorrhizae on biomass depends heavily on the level of Fertilizer present.

## Interpretation
High Fertilizer Level
•	Difference: Mean (no Myco) – Mean (Myco) = +0.23996232$
•	p-value: 0.0004082 (Significant)
•	Interpretation: At high fertilizer levels, Mycorrhizae presence significantly decreased plant biomass.
Medium Fertilizer Level
•	Difference: Mean (Myco) – Mean (No Myco) = +0.01245762$
•	p-value: 0.9998352 (Insignificant)
•	Interpretation: At medium fertilizer levels, Mycorrhizae presence had no meaningful impact on biomass.
Low Fertilizer Level
•	Difference: Mean (no Myco) – Mean (Myco) = -0.18974547$
•	p-value: 0.0202511 (Significant)
•	Interpretation: At low fertilizer levels, Mycorrhizae presence significantly increased plant biomass.

While Mycorrhizae alone does not show a strong main effect across all conditions, its interaction with fertilizer is significant:
•	Low nutrients: Mycorrhizae acts mutualistically and promotes growth.
•	High nutrients: Mycorrhizae becomes parasitic/costly and inhibits growth.
The results are consistent with the results of the original study:
The benefits of mycorrhizae to plant biomass depended on inorganic fertilizer levels (mycorrhizae × fertilizer interaction F1,132 = 14.9, p < 0.001, Figure 1a). At low levels of fertilization, mycorrhizae increased biomass by 86% compared to plants without mycorrhizae (t-ratio = −3.21, df = 132, p = 0.002), while at higher levels of fertilization, they decreased biomass by almost 26% (t-ratio = 4.54, df = 132, p < 0.001). There was no effect at medium levels of fertilization (t-ratio = 0.215, df = 132, p = 0.830). (Getman-Pickering et al., 2021)
## References
Getman-Pickering, Z., Stack, G., & Thaler, J. (2021). Fertilizer quantity and type alter mycorrhizae-conferred growth and resistance to herbivores.
Getman-Pickering, Zoe; Stack, George; Thaler, Jennifer (2021). Fertilizer quantity and type alter mycorrhizae-conferred growth and resistance to herbivores [Dataset]. Dryad. https://doi.org/10.5061/dryad.6djh9w10m

