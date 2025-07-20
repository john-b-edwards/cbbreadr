
# cbbreadr <a href='https://github.com/john-b-edwards/cbbreadr'><img src='https://github.com/john-b-edwards/cbbd-data/blob/master/data/outputs/cbbreadr_hex.png?raw=true' align="right" width="15%" min-width="120px" /></a>

<!-- badges: start -->
<!-- badges: end -->

Low level loader for reading in college basketball data in bulk.

## Installation

You can install the development version of cbbreadr like so:

```r
devtools::install_github("https://github.com/john-b-edwards/cbbreadr")
```

## Examples

Most functions take in a `seasons` argument for seasons to query. Data is typically available between 2003 and the present season, but an error is thrown if data is not available for a specified season. Calling functions as-is will load data from the most recent (or current) college basketball season.

```r
library(cbbreadr)
# with no argument, returns most recent season
load_games()
# specify a single season
load_games(2023)
# specify a range of seasons
load_games(2010:2015)
```

To return all available seasons for a given resource, just pass `TRUE` as an argument to the function.

```r
# return all available seasons
load_games(TRUE)
```

Some functions load resources that do not to be specified by year, and thus do not take an argument.
```r
# does not take any arguments
load_conferences()
```

## Acknowledgements

This package is only possible thanks to the [CollegeBasketballData.com](https://collegebasketballdata.com/) API. The API is maintained by Bill Radjewski, who is kind enough to make this data available for free. 

The API does have premium tiers but maintaining this package requires only the free tier, so no money is needed for upkeep for the package. If you would like to support this package, rather than send any money my way, I encourage you to instead donate or subscribe to [Bill's Patreon](https://www.patreon.com/c/collegefootballdata/posts) so that he can continue developing and maintaining this wonderful project.
