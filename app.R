library(shiny)
library(shinydashboard)

ui <- dashboardPage(
  dashboardHeader(title = "S. Lynn Sutcliffe 1943–2024"),
  dashboardSidebar(disable = TRUE),
  dashboardBody(
    tags$head(
      tags$style(HTML("
        .cover {
          position: relative;
          width: 100%;
          text-align: center;
          margin-bottom: 30px;
        }
        .cover img {
          width: 100%;
          height: auto;
          border-radius: 10px;
        }
        .cover-text {
          position: absolute;
          top: 40%;
          width: 100%;
          color: white;
          font-size: 2.5em;
          font-weight: bold;
          text-shadow: 2px 2px 8px #000;
        }
        .section-links {
          font-size: 1.2em;
          margin-bottom: 20px;
        }
        .upload-button {
          background-color: #f39c12;
          color: white;
          padding: 15px;
          border: none;
          border-radius: 8px;
          font-size: 1.3em;
          margin: 30px 0;
        }
      "))
    ),
    
    div(class = "cover",
        img(src = "SLS_COVER.jpg"),
        div(class = "cover-text", "S. Lynn Sutcliffe 1943–2024: A Celebration of His Life")
    ),
    
    div(class = "section-links", HTML("
      <ul>
        <li><a href='https://drive.google.com/drive/folders/10I-5gDPnreyFNKtDJA9L16cp4ON7suUi?usp=sharing' target='_blank'>SLS</a></li>
        <li><a href='https://drive.google.com/drive/folders/14s23K6wEK_Av_Dk-fqkX71dmh7RiYDcN?usp=sharing' target='_blank'>Bellevue Buddies</a></li>
        <li><a href='https://drive.google.com/drive/folders/0ByG4Ynkjp669aHZsWVFoMXJaUTg?resourcekey=0-HFdxtnOrW_cYI1EbAjWv-Q&usp=sharing' target='_blank'>Bernardsville</a></li>
        <li><a href='https://drive.google.com/drive/folders/1OCi_4kyTldwQnsAmyffBF8rTAiQyU9Mm?usp=sharing' target='_blank'>DC</a></li>
        <li><a href='https://drive.google.com/drive/folders/1yyBEOMKQ92IfBRv4l1e_5yXWkucfOGQv?usp=sharing' target='_blank'>His Career</a></li>
        <li><a href='https://drive.google.com/drive/folders/1JxDizx8lTjpsefbi1mNTr6bpuslOjVeu?usp=sharing' target='_blank'>Junior High Sweethearts</a></li>
        <li><a href='https://drive.google.com/drive/folders/1qoXjkCM_cF0GeLoopJJJMXQ6ef3mFkwf?usp=sharing' target='_blank'>Our Dad</a></li>
        <li><a href='https://drive.google.com/drive/folders/1Lk0Z0hqWnTB1BXIhrQOdGzw69arsWec3?usp=sharing' target='_blank'>Our Grandad</a></li>
        <li><a href='https://drive.google.com/drive/folders/14oE8fhDCk4eVAd5JIz6xnQkJKNR26A1Y?usp=sharing' target='_blank'>Over the Years</a></li>
        <li><a href='https://drive.google.com/drive/folders/1EEeXlSzc_NLNusY_PVd9SIOwxhSPM12_?usp=sharing' target='_blank'>Princeton Peeps</a></li>
      </ul>
    ")),

    div(
      actionButton("uploadBtn", "Virtual or In Person Celebration of Life Guests, Add Your Photos Here",
                   onclick = "window.open('https://drive.google.com/drive/folders/1Puep4x6BewUvSiwDsHibGBkhHewcpRYD?usp=sharing', '_blank')",
                   class = "upload-button")
    ),

    tags$hr(),

    h3("Featured Videos"),
    tags$ul(
      tags$li(tags$a(href = "https://www.youtube.com/watch?v=zIEk_ebHFaU", target = "_blank", "Cath & Lynn: Junior High Sweethearts")),
      tags$li(tags$a(href = "https://www.youtube.com/watch?v=axIQPiE-StU", target = "_blank", "Boys of Fall '64"))
    )
  )
)

server <- function(input, output, session) {}

shinyApp(ui, server)
