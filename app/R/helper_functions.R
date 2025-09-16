load_data <- function(r, file_path){
  
  ext <- tools::file_ext(file_path)
  
  validate(need(ext %in% c("csv", "xlsx"), "Please upload a csv or xlsx")) 
  
  r$df <- switch(ext,
                 csv = read.csv(file_path),
                 xlsx = readxl::read_xlsx(file_path)) # maybe should use duckdb to read data in too
  print("uploaded")

}
