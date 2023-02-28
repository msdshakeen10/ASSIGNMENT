# IMPORTING LIBRARIES
library(rvest)
library(dplyr)

# SCRAPPING WEBSITE
link <- "https://wynk.in/music/package/kollywood-weekly-top-50/bb_1540878188291"

# ALLOWABILITY
#path = paths_allowed(link)

# HTML ELEMENTS FROM WEBSITE
web <- read_html(link)

# SEGREGATING NAME
name <- web %>% html_nodes(".lister-item-header a") %>% html_text()

# VIEWING NAME LIST
View(name)
#segregating rating
rating <- web %>% html_nodes("strong") %>% html_text()

# VIEWING YEAR LIST
View(rating)

# SEGREGATING year
year <- web %>% html_nodes(".secondaryInfo") %>% html_text()

# VIEWING year LIST
View(year)

movies <- data.frame(name , rating ,year)

View(movies)
write.csv(moblies,"my moblies data.csv")





