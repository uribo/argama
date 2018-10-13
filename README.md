ARGAMA: BLOGDOWN environment with docker for teams.
================

![](inst/header_logo.png)

What's this
-----------

The [blogdown](https://bookdown.org/) package that static websites generater using [R Markdown](http://rmarkdown.rstudio.com/) and [Hugo](https://gohugo.io/) systems. Blogdown is powerful for R users to easily manage a static blog site. But when managing blogs by teams, it is difficult to maintain due to differences in own environment and package versions.

The argama projects use [docker](https://www.docker.com/) container to solve this problem. By describing the R package and system used for the dockerfile in the repository, you can expect to make the blogdown operation easier on the team.

How to use
----------

Download this repository as `.zip` archives. Then, you write pass-phase for login to rstudio-server. We recommend like a below files useful.

    # save .env
    PASSWORD=<your password>

Running container using `docker-compose`.

``` bash
cd argama
docker-compose up
```

Open `loccalhost:8787` in blowswer and go to rproject (your blog project).

``` r
# Serve site (already setup hugoe and default blog themes)
blogdown::serve_site()
```

Done!

Next, customize from this repository and writing your articles.

Integrations
------------

### textlintr

[Textlintr](https://github.com/uribo/textlintr/) is package that natural language lint tools for R. You can combine rules freely to check for misspellings and so on.

1.  Initialise textlint environments (install `textlint.js` and some rules)
    -   `init_textlintr(rules = c("common-misspellings", "prh"))`
    -   A list of rules can be confirmed with `rule_sets()`
2.  Configure `.textlintrc`
3.  Run `textlint("target.md")`
4.  Want to add a rule? --- You can supplement rules by running `add_rule()`
