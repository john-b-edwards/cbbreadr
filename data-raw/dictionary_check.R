# data dictionary checking
# shamelessly stolen from nflreadr
devtools::load_all()
library(dplyr)
library(skimr)
library(waldo)
library(data.table)

dict_check <- function(df, dict) {
  actual_vars <- df |>
    skim() |>
    pull(skim_variable) |>
    sort()
  dictionary_vars <- dict |>
    pull(1) |>
    sort()

  compare(actual_vars, dictionary_vars, max_diffs = Inf)
}

load_conferences() |>
  dict_check(dictionary_conferences)

load_games() |>
  dict_check(dictionary_games)

load_lines() |>
  dict_check(dictionary_lines)

load_media() |>
  dict_check(dictionary_media)

load_player_box_scores() |>
  dict_check(dictionary_player_box_scores)

load_player_stats() |>
  dict_check(dictionary_player_stats)

load_plays() |>
  dict_check(dictionary_plays)

load_rankings() |>
  dict_check(dictionary_rankings)

load_recruiting() |>
  dict_check(dictionary_recruiting)

load_rosters() |>
  dict_check(dictionary_rosters)

load_team_box_scores() |>
  dict_check(dictionary_team_box_scores)

load_team_stats() |>
  dict_check(dictionary_team_stats)

load_teams() |>
  dict_check(dictionary_teams)

load_venues() |>
  dict_check(dictionary_venues)
