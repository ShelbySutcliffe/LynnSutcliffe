library(shiny)
library(shinythemes)

ui <- fluidPage(
  theme = shinytheme("flatly"),

  tags$head(
    tags$style(HTML("
      .album-img {
        width: 100%;
        height: 200px;
        object-fit: cover;
        border-radius: 10px;
        margin-bottom: 10px;
        box-shadow: 0 4px 8px rgba(0,0,0,0.1);
      }
      .album-title {
        text-align: center;
        font-weight: bold;
        margin-bottom: 20px;
      }
    "))
  ),

  titlePanel(NULL),

  # Cover image and heading
  fluidRow(
    column(12, align = "center",
           img(src = "SLS_COVER.jpg", height = "300px"),
           h2("S. Lynn Sutcliffe 1943–2024"),
           h4("A Celebration of His Life"),
           br()
    )
  ),

  # Guest Upload Button
  fluidRow(
    column(12, align = "center",
           tags$a(
             href = "https://drive.google.com/drive/folders/1Puep4x6BewUvSiwDsHibGBkhHewcpRYD?usp=sharing",
             class = "btn btn-danger btn-lg",
             "Virtual or In Person Celebration of Life Guests, Add Your Photos Here",
             target = "_blank"
           ),
           br(), br()
    )
  ),

  # Album grid
  fluidRow(
    column(4, align = "center",
           img(src = "sls.jpg", class = "album-img"),
           div(class = "album-title",
               tags$a("SLS", href = "https://drive.google.com/drive/folders/10I-5gDPnreyFNKtDJA9L16cp4ON7suUi", target = "_blank"))
    ),
    column(4, align = "center",
           img(src = "bellevue.jpg", class = "album-img"),
           div(class = "album-title",
               tags$a("Bellevue Buddies", href = "https://drive.google.com/drive/folders/14s23K6wEK_Av_Dk-fqkX71dmh7RiYDcN", target = "_blank"))
    ),
    column(4, align = "center",
           img(src = "bernardsville.jpg", class = "album-img"),
           div(class = "album-title",
               tags$a("Bernardsville", href = "https://drive.google.com/drive/folders/0ByG4Ynkjp669aHZsWVFoMXJaUTg?resourcekey=0-HFdxtnOrW_cYI1EbAjWv-Q", target = "_blank"))
    )
  ),
  fluidRow(
    column(4, align = "center",
           img(src = "career.jpg", class = "album-img"),
           div(class = "album-title",
               tags$a("His Career", href = "https://drive.google.com/drive/folders/1yyBEOMKQ92IfBRv4l1e_5yXWkucfOGQv", target = "_blank"))
    ),
    column(4, align = "center",
           img(src = "sweethearts.jpg", class = "album-img"),
           div(class = "album-title",
               tags$a("Junior High Sweethearts", href = "https://drive.google.com/drive/folders/1JxDizx8lTjpsefbi1mNTr6bpuslOjVeu", target = "_blank"))
    ),
    column(4, align = "center",
           img(src = "ourdad.jpg", class = "album-img"),
           div(class = "album-title",
               tags$a("Our Dad", href = "https://drive.google.com/drive/folders/1qoXjkCM_cF0GeLoopJJJMXQ6ef3mFkwf", target = "_blank"))
    )
  ),
  fluidRow(
    column(4, align = "center",
           img(src = "ourgrandad.jpg", class = "album-img"),
           div(class = "album-title",
               tags$a("Our Grandad", href = "https://drive.google.com/drive/folders/1Lk0Z0hqWnTB1BXIhrQOdGzw69arsWec3", target = "_blank"))
    ),
    column(4, align = "center",
           img(src = "years.jpg", class = "album-img"),
           div(class = "album-title",
               tags$a("Over the Years", href = "https://drive.google.com/drive/folders/14oE8fhDCk4eVAd5JIz6xnQkJKNR26A1Y", target = "_blank"))
    ),
    column(4, align = "center",
           img(src = "princeton.jpg", class = "album-img"),
           div(class = "album-title",
               tags$a("Princeton Peeps", href = "https://drive.google.com/drive/folders/1EEeXlSzc_NLNusY_PVd9SIOwxhSPM12_", target = "_blank"))
    )
  )
)

server <- function(input, output, session) {}

shinyApp(ui, server)


server <- function(input, output, session) {}

shinyApp(ui, server)
