df_theo=read.delim("clipboard")
head(df_theo)
model_reg=lm(df_theo$Y~df_theo$X)
summary(model_reg)

df_theo=read.delim("clipboard")
df_theo$brick_dummy <- ifelse(df_theo$Brick == "Yes", 1,0)
df_theo$N_dummy1 <- ifelse(df_theo$Neighborhood =="West", 1,0)
df_theo$N_dummy2 <- ifelse(df_theo$Neighborhood =="North", 1,0)
model=lm(df_theo$Price~df_theo$SqFt+df_theo$Bedrooms+df_theo$Bathrooms+df_theo$brick_dummy+df_theo$N_dummy1+df_theo$N_dummy2)
summary(model)

by(df_theo$Price, df_theo$Neighborhood, mean)
by(df_theo$Price, df_theo$Brick, mean)
