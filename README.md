# Indian Names and Languages - Census Analysis

A few years ago I got hold of the Bangalore electoral roll - about 8 million voters with their names, ages, and genders. The obvious question was: how has naming diversity changed across generations? The less obvious question was: how does Bangalore compare to the US?

## What's here

### Name diversity (`name analysis.Rmd`)

The core idea borrows from industrial economics - the Herfindahl-Hirschman Index, originally built to measure market concentration, works beautifully for measuring name concentration. Compute HHI on first name frequencies by birth year, take the reciprocal, and you get an "effective number of first names" for each cohort.

The finding that surprised me: Bangalore's name diversity has been *increasing* over time (more unique names per cohort), mirroring the US trend but at a much higher baseline. Bangalore has roughly 3-4x the effective number of first names as the US for comparable birth cohorts. Part of this is the multilingual mix - Kannada, Tamil, Telugu, Hindi, Urdu names all coexisting in one city.

The analysis also compares Bangalore to Texas specifically (similar population, both growing cities with lots of migration).

### Hindi dialects (`hindi analysis.Rmd`)

Census 2011 records mother tongue at the dialect level, not just "Hindi." This notebook maps which Hindi dialects dominate where - Bhojpuri in eastern UP and Bihar, Chhattisgarhi in Chhattisgarh (obviously), Marwari in Rajasthan, and so on. Also identifies "hyperlocal" languages - those with a million-plus speakers concentrated in five or fewer districts.

### Urban linguistic diversity (`india urban language.Rmd`)

Which Indian cities are the most linguistically diverse? Takes Census 2011 mother tongue data for every city above 100K population, computes HHI-based diversity scores, and ranks them. Spoiler: port cities and tech hubs do well.

### Utility (`popularnameplot.R`)

A small helper function that plots the popularity of specific Indian names over time.

## Data

Data files aren't in the repo - they're too large (the voter roll RData alone is 185MB) and some are sensitive. The Census C-16 tables can be downloaded from [censusindia.gov.in](https://censusindia.gov.in).

## Dependencies

R, with `tidyverse`, `sf`, `readxl`. The name analysis also needs US baby name data from the SSA (available as state-level text files).
