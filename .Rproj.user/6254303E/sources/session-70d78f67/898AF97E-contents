inputDisplayUi <- function(id){
  ns <- shiny::NS(id)
  shiny::tagList(
    DT::dataTableOutput(ns("input_data_display"))
  )
  
}

inputDisplayServer <- function(id, r){
  moduleServer(id, function(input, output, session) {
    ns <- session$ns
    
    output$input_data_display <- DT::renderDataTable({
      DT::datatable(r$df, filter = "top", options = list(select = list(maxOptions = 2000), dom = 'Bfrtip', buttons = c("copy", "csv", "excel", "pdf"), pageLength = 10))
    })
    
  })
}