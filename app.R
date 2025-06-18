library(shiny)
library(shinythemes)

ui <- fluidPage(
  theme = shinytheme("flatly"),
  tags$head(tags$style(HTML(".album-img { width: 100%; max-width: 250px; border-radius: 15px; margin-bottom: 10px; } .album-block { display: inline-block; margin: 15px; text-align: center; vertical-align: top; } .main-cover { width: 100%; max-width: 500px; border-radius: 20px; margin-bottom: 20px; } .special-button { background-color: #2e6b3d; color: white; padding: 10px 20px; border-radius: 10px; font-size: 18px; text-decoration: none; display: inline-block; margin: 20px 0; } h2, h3, a { font-family: \"Lucida Handwriting\", cursive; color: #2c3e50; }"))),

  titlePanel(""),

  tags$div(style = "text-align:center",
           tags$img(src = "https://raw.githubusercontent.com/ShelbySutcliffe/LynnSutcliffe/main/SLS_COVER.jpg",
                    class = "main-cover"),
           tags$h2("S. Lynn Sutcliffe 1943–2024"),
           tags$h3("A Celebration of His Life")
  ),

  tags$div(style = "text-align:center",
    tags$a(href = "https://drive.google.com/drive/folders/1Puep4x6BewUvSiwDsHibGBkhHewcpRYD?usp=sharing",
           class = "special-button", target = "_blank",
           "Virtual or In-Person Celebration of Life Guests: Add Your Photos Here")
  ),

  tags$div(style = "text-align:center",
    tags$h3("Click an album below to view photos")
  ),

  fluidRow(
    column(12, align = "center",
      tags$div(class = "album-block",
        tags$img(src = "https://raw.githubusercontent.com/ShelbySutcliffe/LynnSutcliffe/main/sls.jpg", class = "album-img"),
        tags$a(href = "https://drive.google.com/drive/folders/10I-5gDPnreyFNKtDJA9L16cp4ON7suUi?usp=sharing", target = "_blank", "SLS")
      ),
      tags$div(class = "album-block",
        tags$img(src = "https://raw.githubusercontent.com/ShelbySutcliffe/LynnSutcliffe/main/bellevue.jpg", class = "album-img"),
        tags$a(href = "https://drive.google.com/drive/folders/14s23K6wEK_Av_Dk-fqkX71dmh7RiYDcN?usp=sharing", target = "_blank", "Bellevue Buddies")
      ),
      tags$div(class = "album-block",
        tags$img(src = "https://raw.githubusercontent.com/ShelbySutcliffe/LynnSutcliffe/main/bernardsville.jpg", class = "album-img"),
        tags$a(href = "https://drive.google.com/drive/folders/0ByG4Ynkjp669aHZsWVFoMXJaUTg?resourcekey=0-HFdxtnOrW_cYI1EbAjWv-Q&usp=sharing", target = "_blank", "Bernardsville")
      ),
      tags$div(class = "album-block",
        tags$img(src = "https://raw.githubusercontent.com/ShelbySutcliffe/LynnSutcliffe/main/career.jpg", class = "album-img"),
        tags$a(href = "https://drive.google.com/drive/folders/1yyBEOMKQ92IfBRv4l1e_5yXWkucfOGQv?usp=sharing", target = "_blank", "His Career")
      ),
      tags$div(class = "album-block",
        tags$img(src = "https://raw.githubusercontent.com/ShelbySutcliffe/LynnSutcliffe/main/ourdad.jpg", class = "album-img"),
        tags$a(href = "https://drive.google.com/drive/folders/1qoXjkCM_cF0GeLoopJJJMXQ6ef3mFkwf?usp=sharing", target = "_blank", "Our Dad")
      ),
      tags$div(class = "album-block",
        tags$img(src = "https://raw.githubusercontent.com/ShelbySutcliffe/LynnSutcliffe/main/ourgrandad.jpg", class = "album-img"),
        tags$a(href = "https://drive.google.com/drive/folders/1Lk0Z0hqWnTB1BXIhrQOdGzw69arsWec3?usp=sharing", target = "_blank", "Our Grandad")
      ),
      tags$div(class = "album-block",
        tags$img(src = "https://raw.githubusercontent.com/ShelbySutcliffe/LynnSutcliffe/main/years.jpg", class = "album-img"),
        tags$a(href = "https://drive.google.com/drive/folders/14oE8fhDCk4eVAd5JIz6xnQkJKNR26A1Y?usp=sharing", target = "_blank", "Over the Years")
      ),
      tags$div(class = "album-block",
        tags$img(src = "https://raw.githubusercontent.com/ShelbySutcliffe/LynnSutcliffe/main/princeton.jpg", class = "album-img"),
        tags$a(href = "https://drive.google.com/drive/folders/1EEeXlSzc_NLNusY_PVd9SIOwxhSPM12_?usp=sharing", target = "_blank", "Princeton Peeps")
      )
    )
  ),

  tags$br(),

  tags$div(style = "text-align:center",
    tags$h3("Video Tributes"),
    tags$iframe(width="560", height="315", src="https://www.youtube.com/embed/axIQPiE-StU", frameborder="0",
                allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture", allowfullscreen = NA),
    tags$br(), tags$br(),
    tags$iframe(width="560", height="315", src="https://www.youtube.com/embed/zIEk_ebHFaU", frameborder="0",
                allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture", allowfullscreen = NA)
  )
)

server <- function(input, output, session) {
  # No server logic needed for this static app
}

shinyApp(ui, server)
