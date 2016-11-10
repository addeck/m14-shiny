# BuildMap file: write function that returns a map

# This function requires plotly
library(plotly)

# BuildMap function: fill this in with a function that returns a map:
# Try parameterize a few options, such as the title
# I suggest: https://plot.ly/r/bubble-maps/
BuildMap <- function(data) {
  #state boundaries, white border
  l <- list(color = toRGB("white"), width = 2)
  #Map projection of USA
  g <- list(
    scope = 'usa',
    projection = list(type = 'albers usa'),
    showlakes = TRUE,
    lakecolor = toRGB('white')
  )
  p <- plot_geo(data, locationmode = 'USA-states') %>% 
    #adding markers on map
    add_markers(x = ~lon, y = ~lat) %>% 
    #layout of map
    layout(title = 'Cities', geo = g)
return(p)  

  
  
}
