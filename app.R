library(shiny)

# Define album data
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

ui <- fluidPage(
  tags$head(
    tags$style(HTML("
      .instruction-text {
        font-size: 20px;
        font-weight: bold;
        margin-bottom: 20px;
        text-align: center;
      }
      .album-img {
        width: 100%;
        height: auto;
        border-radius: 8px;
        box-shadow: 0px 0px 5px #888;
      }
      .album-title {
        font-size: 20px;
        font-weight: bold;
        margin-top: 8px;
        text-align: center;
      }
      .album-button {
        font-size: 18px;
        padding: 10px 20px;
        margin-top: 10px;
        width: 100%;
      }
      @media (max-width: 768px) {
        .album-button {
          font-size: 20px;
        }
      }
    "))
  ),
  
  div(class = "instruction-text", "Click on album TITLE below to view photos"),
  
  fluidRow(
    lapply(names(albums), function(album) {
      column(
        width = 4,
        div(
          img(src = albums[[album]], class = "album-img"),
          div(class = "album-title", album),
          actionButton(inputId = paste0("btn_", album), label = "View Photos", class = "album-button")
        )
      )
    })
  )
)

server <- function(input, output, session) {
  # Server logic placeholder
}

shinyApp(ui, server)



