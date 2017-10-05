
require(tidyverse)
require(mosaic)

write.csv( as_tibble(HairEyeColor), 'HairEyeColor.csv', row.names = FALSE )

write.csv( as_tibble(PlantGrowth), 'PlantGrowth.csv', row.names = FALSE )

write.csv( as_tibble(VADeaths), 'VADeaths.csv', row.names = FALSE )

write.csv( as_tibble(WorldPhones), 'WorldPhones.csv', row.names = FALSE )

write.csv( as_tibble(Births78), 'Births78.csv', row.names = FALSE )

write.csv( as_tibble(mpg), 'mpg.csv', row.names = FALSE )

write.csv( as_tibble(iris), 'iris.csv', row.names = FALSE )
