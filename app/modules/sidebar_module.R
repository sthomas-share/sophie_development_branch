sidebarUi <- function(id){
  ns <- shiny::NS(id)
  shiny::tagList(
    shiny::fileInput(ns("file_upload"), label = "Influencers to choose from", multiple = FALSE),
    shiny::fileInput(ns("exclusions"), label = "Influencers to exclude", multiple = TRUE),
    shiny::numericInput(ns("n_choose"), value = 100, label = "How many influeners do you want to select?", updateOn = "blur"), # currently updates when enter button hit but maybe should be go button? 
    select_input_with_tooltip(ns("select_cols"), "Choose by:", "i literally have no idea what this is going to be for", choice_list = list(), select = NULL, multiple_selections = TRUE)
  )
  
}

sidebarServer <- function(id, r){
  moduleServer(id, function(input, output, session) {
    ns <- session$ns
    
    shiny::observe({
      shiny::updateSelectizeInput(session = session, "select_cols", choices = colnames(r$df), selected = "none")
      shiny::updateNumericInput(session = session, "n_choose", max = nrow(r$df))
    })
    
    shiny::observeEvent(input$file_upload, {
      print("starting file upload")
      load_data(r, input$file_upload$datapath)
      print("finished file upload")
    })
    
  })
}