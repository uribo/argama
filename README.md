ARGAMA: BLOGDOWN environment with docker for teams.
================

![](inst/header_logo.png)

## What’s this

The [blogdown](https://bookdown.org/) package that static websites
generater using [RMarkdown](http://rmarkdown.rstudio.com/) and
[Hugo](https://gohugo.io/) systems. Blogdown is powerful for R users to
easily manage a static blog site. But when managing blogs by teams, it
is difficult to maintain due to differences in own environment and
package versions.

The argama projects use [docker](https://www.docker.com/) container to
solve this problem. By describing the R package and system used for the
dockerfile in the repository, you can expect to make the blogdown
operation easier on the team.

## How to use

Download this repository as `.zip` archives. Then, you write pass-phase
for login to rstudio-server. We recommend like a below files.

    # save .env
    PASSWORD=<your password>

Running container using `docker-compose`.

``` bash
cd argama
docker-compose up
```

Open `loccalhost:8787` in blowswer and go to rproject (your blog
project).

``` r
# Serve site (already setup hugoe and default blog themes)
blogdown::serve_site()
```

Done\!

Next, customize from this repository and writing your articles.
