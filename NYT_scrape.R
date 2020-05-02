apikey <- "Your Key"

base_url <- "https://api.nytimes.com/svc/books/v3/lists/current/paperback-nonfiction.json"
library("httr")
r <- GET(base_url, query = list("api-key" = apikey))

json <- content(r, "parsed")

bk_df <- setNames(data.frame(matrix(ncol = 3, nrow = 0)), c("Title", "AUthor", "Description"))
for (headers in json$results$books) {
  bk_df[nrow(bk_des_df) + 1, ] = c(headers$title, headers$author, headers$description)
}
bk_df
