library(dplyr)

RalliesRotations <- read.csv2(
  "Files/RalliesRotations.csv", 
  header = TRUE,
  sep = ";",
  fileEncoding = "UTF-8-BOM"
) %>% 
  select(-1) %>%
  mutate(
    ServingRotation = as.factor(ServingRotation),
    ReceivingRotation = as.factor(ReceivingRotation)
  )

