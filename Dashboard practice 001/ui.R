library(shiny)
library(shinydashboard)

shinyUI(
  dashboardPage(
    dashboardHeader(title ="OsandaLelum",
      dropdownMenu(type="message",
                   messageItem(from="Finance",message="Finacial report need to update",icon=icon("bar-chart"),time = "1.00a.m."),
                   messageItem(from="IT",message="update dashboard",icon=icon("bars"),time="1.00 p.m."),
                   messageItem(from="SC",message="PO need to check",icon=icon("spotify"),time="1.00 p.m.")
                   
                   ),
      dropdownMenu(type = "tasks",
                   
                taskItem(value=80,color="aqua","Shiny"),
                taskItem(value=20,color="red","web development")
        
      ),
      dropdownMenu(type="notifications",
                   notificationItem(text="Add to the play list",icon = icon("spotify")),
                   notificationItem(text="Add to the friend list",icon = icon("facebook"))
                   )
      
                ),
    dashboardSidebar(
     
      sidebarMenu(
        sidebarSearchForm("searchText","buttonSearch","search"),
      menuItem("Dashboard",tabName="dashboard"),
        menuSubItem("Dashboard Finance",tabName="financedashboard"),
        menuSubItem("Dashboard Sales",tabName="salesdashboard"),
      menuItem("DetailAnalytics",tabName="detailanalytics",badgeLabel = "new",badgeColor = "red"),
      menuItem("RawData",tabName="rawdata")
      ),
      sliderInput("bins","Student Grade",1,11,1)
      
    ),
    dashboardBody(
        tabItems(
            tabItem(tabName="dashboard",
             fluidRow(
               box(title="New Histogram",plotOutput("histogram"),status="primary",solidHeader = T)
             )
            ),
              tabItem(tabName="financedashboard",
              h1("Fianance Dashboard")
              
              ),
               tabItem(tabName="salesdashboard",
              h1("Sales Dashboard")              
              ),
              tabItem(tabName="detailanalytics",
                    h1("Details Analytics")              
            ),
            tabItem(tabName="rawdata",
                    h1("Raw Data")              
            )



        )
    )
  )
)