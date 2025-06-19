library(shiny)
library(shinythemes)

# Album names and image filenames
albums <- list(
  "SLS" = "SLS.jpg",
  "SLS_BellevueBuddies" = "SLS_BellevueBuddies.jpg",
  "SLS_Bernardsville" = "SLS_Bernardsville.jpg",
  "SLS_HisCareer" = "SLS_HisCareer.jpg",
  "SLS_JuniorHighSweethearts" = "SLS_JuniorHighSweethearts.jpg",
  "SLS_OurDad" = "SLS_OurDad.jpg",
  "SLS_OurGrandad" = "SLS_OurGrandad.jpg",
  "SLS_OverTheYears" = "SLS_OverTheYears.jpg",
  "SLS_PrincetonPeeps" = "SLS_PrincetonPeeps.jpg"
)

# Base URL for images (your GitHub repo)
image_base_url <- "https://raw.githubusercontent.com/shelbysutcliffe/celebration-of-life/main/"

ui <- fluidPage(
  theme = shinytheme("flatly"),
  tags$head(
    tags$link(
      href = "https://fonts.googleapis.com/css2?family=Great+Vibes&display=swap",
      rel = "stylesheet"
    ),
    tags$style(HTML("
      body {
        font-family: 'Helvetica Neue', sans-serif;
      }
      .app-title {
        font-family: 'Great Vibes', cursive;
        font-size: 48px;
        text-align: center;
        margin-top: 30px;
        margin-bottom: 10px;
      }
      .instruction-text {
        font-size: 20px;
        font-weight: bold;
        text-align: center;
        margin-bottom: 30px;
      }
      .album-img {
        width: 100%;
        border-radius: 12px;
        box-shadow: 0 4px 8px rgba(0,0,0,0.2);
      }
      .album-title {
        font-size: 20px;
        font-weight: bold;
        text-align: center;
        margin-top: 10px;
      }
      .album-button {
        display: block;
        margin: 10px auto 30px auto;
        font-size: 18px;
        padding: 10px 20px;
        width: 80%;
      }
      @media (max-width: 768px) {
        .album-button {
          font-size: 20px;
          padding: 12px;
        }
      }
    "))
  ),
  
  div(class = "app-title", "Celebration of Life"),
  div(class = "instruction-text", "Click on album TITLE below to view photos"),
  
  fluidRow(
    lapply(names(albums), function(album) {
      column(
        width = 4,
        div(
          img(src = paste0(image_base_url, albums[[album]]), class = "album-img"),
          div(class = "album-title", album),
          actionButton(inputId = paste0("btn_", album), label = "View Photos", class = "album-button")
        )
      )
    })
  )
)

server <- function(input, output, session) {
  # Placeholder for album viewer logic if needed
}

shinyApp(ui = ui, server = server)




