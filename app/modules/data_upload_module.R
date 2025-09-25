what do i want?
[x] need an upload button, need to be able to view the dataframe
[] data layout displays? 
[] maybe a chart that shows the proportion of each of the statuses
[] a card that has the data
[] a card that has the status

data_upload_mod_ui <- function({
  ns <- shiny::NS(id)
  shiny::tagList(
  shiny::br(),
  bslib::accordion(
    accordion_panel(
      "Upload Your File",
      # now add file input controls
      shiny::fileInput(ns("file"),
                       "Select File",
                       accept = c(".csv",
                                  ".xlsx",
                                  ".xls")),
      shiny::br(),
      shiny::checkboxInput(ns("header") "Header", TRUE),
      shiny::radioboxInput(ns("sep"), "Separator",
                           choices = c(Comma = ",",
                                       Semicolon = ";",
                                       Tab = "\t"),
                            selected = ",")
      )
    )
   ),
  # data layout display/maybe a card that shows the data

  # maybe the chart that shows the proportion of each of the statuses/card that has the status
  
                                
      

  
  data_upload_mod_server <- function({
  moduleServer(id, function(input,
                            output,
                            session) {
    ns <- session$ns

    })
  })
  # title tabs

  # upload button

  # data layout displays

  # chart that shows proportion of each statuses

  # card that has the data

  # card that has the statue
})
