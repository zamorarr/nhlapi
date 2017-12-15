# Overview

`nhlapi` is a package for querying the [NHL Stats API](https://statsapi.web.nhl.com) through R. This package is still under development and not all endpoints have been implemented yet. 

## Example usage
```R
library(nhlapi)
teams <- get_teams()
player <- get_player("8475149")
game <- get_game_feed("2017020449")

teams$content
player$content
game$content
```

## Installation and Setup
Installation can be done via devtools.

```R
devtools::install_github("zamorarr/nhlapi")
```
