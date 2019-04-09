library(shiny)
require(shinydashboard)
library(ggplot2)
library(dplyr)
library(magrittr)
library(reshape)
library(ggthemes)
library(gridExtra)
library(plotly)


#setwd('C:/Users/hp/Desktop/VIT/Data Visualization/Project/Review 3/Travian')
troops <- read.csv('./TravianTroops.csv',stringsAsFactors = F)

header <- dashboardHeader(title = "Travian")

sidebar <- dashboardSidebar(
  sidebarMenu(
    menuItem("Travian Race", tabName = "TravianRace", icon = icon("dashboard")),
    menuItem("Travian Class", tabName = "TravianClass", icon = icon("th")),
    menuItem("Characteristics", tabName = "Characteristics",icon = icon("th")),
    menuItem("Pie Chart", tabName = "Pie",icon = icon("th")),
    menuItem("Analyze Features", tabName = "DepthfulData",icon = icon("th")),
    menuItem("DataSet", icon = icon("send",lib='glyphicon'), 
             href = "https://www.kaggle.com/cblesa/travian-troops"), 
    menuItem("Github", icon = icon("send",lib='glyphicon'), 
             href = "https://github.com/ganatejadragneel")
  )
)


frow1 <- fluidRow(
  infoBoxOutput("value1")
)

frow3 <- fluidRow(
  infoBoxOutput("value2")
)

frow2 <- fluidRow(
  
  box(
    title = "Attack"
    ,status = "primary"
    ,solidHeader = TRUE 
    ,collapsible = TRUE 
    ,plotlyOutput("plot1", height = "300px")
  ),
  box(
    title = "Speed"
    ,status = "primary"
    ,solidHeader = TRUE 
    ,collapsible = TRUE
    ,plotlyOutput("plot2", height = "300px")
  ),
  box(
    title = "Definf"
    ,status = "primary"
    ,solidHeader = TRUE 
    ,collapsible = TRUE 
    ,collapsed = TRUE
    ,plotlyOutput("plot3", height = "300px")
  ),
  box(
    title = "Defcav"
    ,status = "primary"
    ,solidHeader = TRUE 
    ,collapsible = TRUE 
    ,collapsed = TRUE
    ,plotlyOutput("plot4", height = "300px")
  ),
  box(
    title = "Loot"
    ,status = "primary"
    ,solidHeader = TRUE 
    ,collapsible = TRUE 
    ,collapsed = TRUE
    ,plotlyOutput("plot5", height = "300px")
  ),
  box(
    title = "Cons"
    ,status = "primary"
    ,solidHeader = TRUE 
    ,collapsed = TRUE
    ,collapsible = TRUE 
    ,plotlyOutput("plot6", height = "300px")
  ),
  box(
    title = "Time"
    ,status = "primary"
    ,solidHeader = TRUE 
    ,collapsed = TRUE
    ,collapsible = TRUE 
    ,plotlyOutput("plot7", height = "300px")
  )
  
)

frow4 <- fluidRow(
  
  box(
    title = "Attack"
    ,status = "primary"
    ,solidHeader = TRUE 
    ,collapsible = TRUE 
    ,plotlyOutput("plot11", height = "300px")
  ),
  box(
    title = "Speed"
    ,status = "primary"
    ,solidHeader = TRUE 
    ,collapsible = TRUE
    ,plotlyOutput("plot21", height = "300px")
  ),
  box(
    title = "Definf"
    ,status = "primary"
    ,solidHeader = TRUE 
    ,collapsible = TRUE 
    ,collapsed = TRUE
    ,plotlyOutput("plot31", height = "300px")
  ),
  box(
    title = "Defcav"
    ,status = "primary"
    ,solidHeader = TRUE 
    ,collapsible = TRUE 
    ,collapsed = TRUE
    ,plotlyOutput("plot41", height = "300px")
  ),
  box(
    title = "Loot"
    ,status = "primary"
    ,solidHeader = TRUE 
    ,collapsible = TRUE 
    ,collapsed = TRUE
    ,plotlyOutput("plot51", height = "300px")
  ),
  box(
    title = "Cons"
    ,status = "primary"
    ,solidHeader = TRUE 
    ,collapsed = TRUE
    ,collapsible = TRUE 
    ,plotlyOutput("plot61", height = "300px")
  ),
  box(
    title = "Time"
    ,status = "primary"
    ,solidHeader = TRUE 
    ,collapsed = TRUE
    ,collapsible = TRUE 
    ,plotlyOutput("plot71", height = "300px")
  )
  
)

frow5 <- fluidRow(
  box(
    title = "Battle"
    ,status = "primary"
    ,solidHeader = TRUE 
    ,collapsible = TRUE
    ,width=11
    ,plotOutput("plot12", height = "400px")
  )
)

frow6 <- fluidRow(
  box(
    title = "Resources"
    ,status = "primary"
    ,solidHeader = TRUE 
    ,collapsible = TRUE
    ,collapsed = TRUE
    ,width=11
    ,plotOutput("plot22", height = "400px")
  )
)

frow7 <- fluidRow(
  box(
    title = "Race: Gauls, Romans, Teutons, Egyptians, Huns"
    ,status = "primary"
    ,solidHeader = TRUE 
    ,collapsible = TRUE
    ,width=11
    ,plotOutput("plot13", height = "400px")
  )
)

frow8 <- fluidRow(
  box(
    title = "Wood"
    ,status = "primary"
    ,solidHeader = TRUE 
    ,collapsible = TRUE
    ,plotlyOutput("plot14", height = "300px")
  ),
  box(
    title = "Clay"
    ,status = "primary"
    ,solidHeader = TRUE 
    ,collapsible = TRUE
    ,plotlyOutput("plot24", height = "300px")
  ),
  box(
    title = "Iron"
    ,status = "primary"
    ,solidHeader = TRUE 
    ,collapsible = TRUE
    ,plotlyOutput("plot34", height = "300px")
  ),
  box(
    title = "Crop"
    ,status = "primary"
    ,solidHeader = TRUE 
    ,collapsible = TRUE
    ,plotlyOutput("plot44", height = "300px")
  ),
  box(
    title = "Attack"
    ,status = "primary"
    ,solidHeader = TRUE 
    ,collapsible = TRUE
    ,plotlyOutput("plot54", height = "300px")
  ),
  box(
    title = "Definf"
    ,status = "primary"
    ,solidHeader = TRUE 
    ,collapsible = TRUE
    ,plotlyOutput("plot64", height = "300px")
  ),
  box(
    title = "Defcav"
    ,status = "primary"
    ,solidHeader = TRUE 
    ,collapsible = TRUE
    ,plotlyOutput("plot74", height = "300px")
  ),
  box(
    title = "Speed"
    ,status = "primary"
    ,solidHeader = TRUE 
    ,collapsible = TRUE
    ,plotlyOutput("plot84", height = "300px")
  ),
  box(
    title = "Loot"
    ,status = "primary"
    ,solidHeader = TRUE 
    ,collapsible = TRUE
    ,plotlyOutput("plot94", height = "300px")
  ),
  box(
    title = "Cons"
    ,status = "primary"
    ,solidHeader = TRUE 
    ,collapsible = TRUE
    ,plotlyOutput("plot104", height = "300px")
  ),
  box(
    title = "Time"
    ,status = "primary"
    ,solidHeader = TRUE 
    ,collapsible = TRUE
    ,plotlyOutput("plot114", height = "300px")
  )
)


body <- dashboardBody(
  tabItems(
    tabItem(tabName = "TravianRace",frow1,frow2),
    tabItem(tabName = "TravianClass",frow3,frow4),
    tabItem(tabName = "Characteristics",frow5,frow6),
    tabItem(tabName = "Pie",frow7),
    tabItem(tabName = "DepthfulData",frow8)
  )
)

ui <- dashboardPage(title = 'Data Visualization', header, sidebar, body, skin='green')

server <- function(input, output) { 
  
  #creating the valueBoxOutput content
  output$value1 <- renderInfoBox({
    infoBox("Race",5,"Race Stats")
  })
  
  output$value2 <- renderInfoBox({
    infoBox("Classes",3,"Class Stats")
  })
  
  output$plot1 <- renderPlotly({
    ggplotly(ggplot(data=troops,aes(Race,Attack))+geom_point(color="red",aes(text = paste("Name:",Name))))
  })
  
  output$plot2 <- renderPlotly({
    ggplotly(ggplot(data=troops,aes(Race,Speed))+geom_point(color="yellow"))
  })
  
  output$plot3 <- renderPlotly({
    ggplotly(ggplot(data=troops,aes(Race,Definf))+geom_point(color="blue"))
  })
  
  output$plot4 <- renderPlotly({
    ggplotly(ggplot(data=troops,aes(Race,Defcav))+geom_point(color="green"))
  })
  
  output$plot5 <- renderPlotly({
    ggplotly(ggplot(data=troops,aes(Race,Loot))+geom_point(color="orange"))
  })
  
  output$plot6 <- renderPlotly({
    ggplotly(ggplot(data=troops,aes(Race,Cons))+geom_point(color="red"))
  })
  
  output$plot7 <- renderPlotly({
    ggplotly(ggplot(data=troops,aes(Race,Time))+geom_point(color="blue"))
  })
  
  output$plot11 <- renderPlotly({
    ggplotly(ggplot(data=troops,aes(Class,Attack))+geom_point(color="red"))
  })
  
  output$plot21 <- renderPlotly({
    ggplotly(ggplot(data=troops,aes(Class,Speed))+geom_point(color="yellow"))
  })
  
  output$plot31 <- renderPlotly({
    ggplotly(ggplot(data=troops,aes(Class,Definf))+geom_point(color="blue"))
  })
  
  output$plot41 <- renderPlotly({
    ggplotly(ggplot(data=troops,aes(Class,Defcav))+geom_point(color="green"))
  })
  
  output$plot51 <- renderPlotly({
    ggplotly(ggplot(data=troops,aes(Class,Loot))+geom_point(color="orange"))
  })
  
  output$plot61 <- renderPlotly({
    ggplotly(ggplot(data=troops,aes(Class,Cons))+geom_point(color="red"))
  })
  
  output$plot71 <- renderPlotly({
    ggplotly(ggplot(data=troops,aes(Class,Time))+geom_point(color="blue"))
  })
  
  output$plot13 <- renderPlot({
    ggplot(data=troops, aes(x="", y=Race,fill=Class))+geom_bar(width = 1, stat = "identity")+coord_polar("y", start=0)
  })

  #Characteristics Tab
  data1  <- troops %>%
    filter(Name != "Settler") %>%
    select(-Name, -Class) %>%
    group_by(Race) %>%
    summarise_all(funs(mean)) %>%
    as.data.frame()
  
  racevec  <- data1$Race
  
  data1 %<>%
    select(-Race) %>%
    scale() %>%
    as.data.frame.matrix() %>%
    mutate(Race = racevec)
  
  dfm <- melt(data1[,c('Race','Attack','Definf', 'Defcav', 'Speed', 'Loot', 'Cons', 'Time')],id.vars = 1)
  
  output$plot12 <- renderPlot({
    ggplot(dfm,aes(x = Race,y = value)) + 
      geom_bar(aes(fill = variable),stat = "identity",position = position_dodge(width = 0.7)) +
      theme_tufte() +
      theme(axis.title.x=element_blank(),
            axis.title.y=element_blank()) +
      coord_flip() +
      ggtitle("Overall battle characteristics  among diffrent tribes")
  })
  
  dfm2 <- melt(data1[,c('Race','Wood','Clay', 'Iron', 'Crop')],id.vars = 1)
  print(dfm2)
  output$plot22 <- renderPlot({
    ggplot(dfm2,aes(x = Race,y = value)) + 
      geom_bar(aes(fill = variable),stat = "identity",position = position_dodge(width = 0.7)) +
      theme_tufte() +
      theme(axis.title.x=element_blank(),
            axis.title.y=element_blank()) +
      coord_flip() +
      ggtitle("Overall resource characteristics among diffrent tribes")
  })
  
  output$plot14 <- renderPlotly({
    ggplotly(ggplot(data=troops, aes(x=Race, y=Wood,color=Race))+ geom_boxplot(notch=TRUE,outlier.colour="red"))
  })
  
  output$plot24 <- renderPlotly({
    ggplotly(ggplot(data=troops, aes(x=Race, y=Clay,color=Race))+ geom_boxplot(notch=TRUE,outlier.colour="red"))
  })
  
  output$plot34 <- renderPlotly({
    ggplotly(ggplot(data=troops, aes(x=Race, y=Iron,color=Race))+ geom_boxplot(notch=TRUE,outlier.colour="red"))
  })
  
  output$plot44 <- renderPlotly({
    ggplotly(ggplot(data=troops, aes(x=Race, y=Crop,color=Race))+ geom_boxplot(notch=TRUE,outlier.colour="red"))
  })
  
  output$plot54 <- renderPlotly({
    ggplotly(ggplot(data=troops, aes(x=Race, y=Attack,color=Race))+ geom_boxplot(notch=TRUE,outlier.colour="red"))
  })
  
  output$plot64 <- renderPlotly({
    ggplotly(ggplot(data=troops, aes(x=Race, y=Definf,color=Race))+ geom_boxplot(notch=TRUE,outlier.colour="red"))
  })
  
  output$plot74 <- renderPlotly({
    ggplotly(ggplot(data=troops, aes(x=Race, y=Defcav,color=Race))+ geom_boxplot(notch=TRUE,outlier.colour="red"))
  })
  
  output$plot84 <- renderPlotly({
    ggplotly(ggplot(data=troops, aes(x=Race, y=Speed,color=Race))+ geom_boxplot(notch=TRUE,outlier.colour="red"))
  })
  
  output$plot94 <- renderPlotly({
    ggplotly(ggplot(data=troops, aes(x=Race, y=Loot,color=Race))+ geom_boxplot(notch=TRUE,outlier.colour="red"))
  })
  
  output$plot104 <- renderPlotly({
    ggplotly(ggplot(data=troops, aes(x=Race, y=Cons,color=Race))+ geom_boxplot(notch=TRUE,outlier.colour="red"))
  })
  
  output$plot114 <- renderPlotly({
    ggplotly(ggplot(data=troops, aes(x=Race, y=Time,color=Race))+ geom_boxplot(notch=TRUE,outlier.colour="red"))
  })
  
}


shinyApp(ui, server)

