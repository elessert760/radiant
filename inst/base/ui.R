help_menu <-
  tagList(
    navbarMenu("", icon = icon("question-circle"),
      tabPanel("Help", uiOutput("help_base"), icon = icon("question")),
      tabPanel("Videos", uiOutput("help_videos"), icon = icon("film")),
      tabPanel("About", uiOutput("help_about"), icon = icon("info")),
      tabPanel(tags$a("", href = "https://github.com/elessert/radiant/issues", target = "_blank",
               list(icon("github"), "Report issue")))
    ),
    js_head
  )

## ui for base radiant
shinyUI(
  do.call(navbarPage, c("Data Center", nav_ui, shared_ui, help_menu))
)
