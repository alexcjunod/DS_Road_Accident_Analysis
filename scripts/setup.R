#############################################
## The following loads the needed packages ##
#############################################

# load the required packages

packages <- c(
  # for the project's organization
  "here",
  
  # for data manipulation and wrangling
  "tidyverse", "jsonlite", "tidyr", "hms", "readxl", "lubridate", "DataExplorer",
  
  # for creating plots and maps
  "ggrepel", "gghighlight", "patchwork", "maps", "scales", "ggmap", 
  "leaflet", "leaflet.extras", "rnaturalearth", "sf", "ggspatial", 
  "rnaturalearth", "DT", "plotly", "viridis", "scales", "ggmosaic",
  
  # for statistical functions and data analysis
  "stats", "dbscan", "zoo", "gtsummary",
  
  # for dynamic report generation and tables
  "knitr", "gt", "htmltools", "pivottabler",
  
  # for interactive visualizations and applications
  "shiny", "ggstatsplot", "visdat"
)
purrr::walk(packages, library, character.only = TRUE)


#packages <- c(
# "here", # for the project's organization
#"tidyverse", # for wrangling
# "ggrepel", "gghighlight", "patchwork", "maps", "scales","hms","jsonlite","tidyr",
#"pivottabler","knitr", "ggmap", "leaflet", "leaflet.extras", "rnaturalearth", "stats", "gtsummary", "viridis", "scales", "ggmosaic", "gt",
#"sf", "dbscan","htmltools", "scales", "zoo", "plotly", "lubridate", "maps", "ggspatial", "rnaturalearth", "DT", "DataExplorer", "shiny", "ggstatsplot", "visdat", "readxl"   # for plotting
#)

######################################################
## The following sets a few option for nice reports ##
######################################################

# general options
options(
  digits = 3,
  str = strOptions(strict.width = "cut"),
  width = 69,
  tibble.width = 69,
  cli.unicode = FALSE
)

# ggplot options
theme_set(theme_light())

# knitr options
knitr::opts_chunk$set(
  comment = "#>",
  collapse = TRUE,
  # cache = TRUE,
  fig.retina = 0.8, # figures are either vectors or 300 dpi diagrams
  dpi = 300,
  out.width = "100%", # Graphs take the full width of the content area
  fig.align = "center",
  # Optional: Adjust these if needed
  # fig.width = 6,
  # fig.asp = 0.618,
  fig.show = "hold",
  message = FALSE,
  echo = TRUE
)

