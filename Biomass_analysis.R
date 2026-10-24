library(readxl)
library(effectsize)
library(ggplot2)
df <- read_excel("Fertilizer_Experiment_1.xlsx")
colSums(is.na(df[, c ("Biomass", "Fertilizer", "Myco")])) # checking whether there are missing values in the dataset
df$Fertilizer <- as.factor(df$Fertilizer)
df$Myco <- as.factor(df$Myco)
ggplot(df, aes(x = Fertilizer, y = Biomass)) + # biomass distributions across fertilizer levels
  geom_boxplot() +
  theme_minimal() +
  labs(title = "The effect of Fertilizer amount on Biomass", x = "Fertilizer", y = "Biomass")
ggplot(df, aes(x = Myco, y = Biomass)) + # biomass distributions with/without mycorrhizae
  geom_boxplot() +
  theme_minimal() +
  labs(title = "The effects of Mycorrhizae on Biomass", x = "Mycorrhizae", y = "Biomass")
model_lm <- lm(Biomass ~ Fertilizer * Myco, data = df) # model to check whether ANOVA assumptions are satisfied
plot(model_lm, which = 1) # Residuals vs Fitted -  residuals scattered around 0 expected
plot(model_lm, which = 2) # Q-Q residuals - diagonal expected
shapiro.test(residuals(model_lm)) # test whether the residuals deviate significantly from normality
model_anova <- aov(Biomass ~ Fertilizer * Myco, data = df)
effectsize::eta_squared(model_anova, partial = FALSE) # checking effect size
TukeyHSD(model_anova) # Post hoc - which pairs of group means differ significantly? 

