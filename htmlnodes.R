install.packages(rvest)
install.packages(httr)
library(httr)
library(rvest)
url <- "https://en.wikipedia.org/wiki/Web_scraping"
x <- GET(url, add_headers('user-agent' = 'r'))
x %>% read_html() %>% html_nodes("#content") %>% html_text()
