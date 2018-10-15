install.packages("twitteR")
install.packages("ROAuth")
install.packages("dplyr")
api_key <- "w9KgjmhXBJEERiEJLfLicmvop"
api_secret <- "rNO3BjrtUbBRKHbFhyg6mnxvmtTX9mrxHAFaalrZDS2vFl7WgE"
accesss_token <- "1050633739296944130-J7BZWYqGxYsM3EmhfrtNGRLn9LdLOP"
access_token_secret <- "J53KVNehZHa4I5dMhxGMINZJezBDViYPBdXZx3asLc6GX"
twitteR::setup_twitter_oauth(api_key,api_secret,accesss_token,access_token_secret)
search.string <- "#keralafloods"
no.of.tweets <- 500
tweets <- twitteR::searchTwitter(search.string,no.of.tweets,lang="en")
library("dplyr")
kf_df <- tbl_df(map_df(tweets,as.data.frame))
write.csv(kf_df,"\home\kf.csv")













































































