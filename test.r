# lowercase conversion, removing html/http/image links, and then the STOPWORDS 
cleanup <- function(x){
  x <- tolower(x)
  x <- gsub("<img src.*?>", "", x)
  x <- gsub("http\\S+", "", x)
  x <- gsub("\\[math\\]", "", x)    # text between [] refers to tags e.g. [math]
  x <- gsub("<.*?>", "", x)
  x <- gsub("\n", " ", x)                 # replace newline with a space
  x <- gsub("\\s+", " ", x)                # multiple spaces into one
  # using tm_map to remove stopwords
  docs <- Corpus(VectorSource(x))
  docs <- tm_map(docs, removeWords, stopwords('en'))
  docs <- tm_map(docs, removePunctuation)    # dont remove punct so early in the analysis
  docs <- tm_map(docs, stripWhitespace)
  xxx <- sapply(docs, function(i) i)
  data_content <- data.frame(text = xxx, stringsAsFactors = FALSE)
  return(data_content$text)
}