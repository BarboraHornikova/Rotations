source("scripts/Import.R")

m1_a_s = lm(M1_A_S ~ ServingRotation + ReceivingRotation, data = RalliesRotations)
m2_a_s = lm(M2_A_S ~ ServingRotation + ReceivingRotation, data = RalliesRotations)
m3_a_s = lm(M3_A_S ~ ServingRotation + ReceivingRotation, data = RalliesRotations)

summary(m1_a_s)
summary(m2_a_s)
summary(m3_a_s)

m1_a_s_res = m1_a_s$residuals
m2_a_s_res = m2_a_s$residuals
m3_a_s_res = m3_a_s$residuals

hist(m1_a_s_res)
hist(m2_a_s_res)
hist(m3_a_s_res)
