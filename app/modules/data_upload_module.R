# what do i want?
#[done ui - x] need an upload button, need to be able to view the dataframe
#[] data layout displays? 
#[done ui - x ] maybe a chart that shows the proportion of each of the statuses
#[] a card that has the data
# [done ui - x] a card that has the status

data_upload_mod_ui <- function(id) {
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
      shiny::checkboxInput(ns("header"), "Header", TRUE),
      shiny::radioButtons(ns("sep"), "Separator",
                           choices = c(Comma = ",",
                                       Semicolon = ";",
                                       Tab = "\t"),
                            selected = ",")
      )
    )
   ),   # maybe the chart that shows the proportion of each of the statuses/card that has the status
  bslib::card(
    bslib::card_header("Proportion Of Statuses",
                       class = "bg-primary text-white"
                ),
                bslib::card_body(
                  plotlyOutput(ns("status_chart"))
                  # chart for proportioning statuses - to do in server function
                ),
                full_screen = TRUE,
    ),
  # data layout display/maybe a card that shows the data
  bslib::card(
    bslib::card_header("Uploaded Data Overview",
                       bslib::card_body(
                      dropdownButton_with_tooltip(
        select_input_with_tooltip(id = ns("status_column"), title = "Status Column",
                                  icon_info = "The name of the column with the influencer's status"),
        select_input_with_tooltip(id = ns("display_columns"), title = "Display Columns",
                                  icon_info = "The columns you want to display in the Uploaded Data table",
                                  multiple_selections = TRUE)
      ),
      DT::dataTableOutput(ns("data_display"))
    ),
 # card to create the status
    bslib::card(
      bslib::card_header("Status Summary",
                         class = "bg-info text-white"),
      bslib::card_body(
        DT::dataTableOutput(ns("status_summary_table"))
        )
      )
                          
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
