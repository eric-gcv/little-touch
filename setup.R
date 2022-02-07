# SET UP

install.packages("blogdown")
library(blogdown)

blogdown::hugo_version()
blogdown::install_hugo()

blogdown::new_site(theme = "gethugothemes/infinity-hugo")

# To start a local preview: use blogdown::serve_site(), or the RStudio add-in "Serve Site"
# To stop a local preview: use blogdown::stop_server(), or restart your R session
# Then visit http://localhost:7715/ in your browser to view the example site.
blogdown::serve_site()
blogdown::stop_server()

# run in terminal to force build
curl -X POST -d '{}' https://api.netlify.com/build_hooks/60c0c716ac8ece1126e7d908


# GitHub Token
install.packages("gitcreds")
library(gitcreds)
usethis::create_github_token()
gitcreds::gitcreds_set()


