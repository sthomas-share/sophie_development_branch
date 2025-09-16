server <- function(input, output, session) {
  
  r <- shiny::reactiveValues(
    # df = df,
    exclude_df = exclude # what happens if they upload multiple?
  )
  
  sidebarServer("sidebar_panel", r)
  inputDisplayServer("input_display_panel", r)
  
  
  
}