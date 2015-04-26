
# This is the server logic for a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#
hor<- function(date){
    m= format(date, "%m") 
    d= format(date, "%d") 
    if (m=="03"){
        if (d>="21"){
            h= 'Aries'
        }
    }
    if (m=="04"){
        if (d<="19"){
            h= 'Aries'
        }
    }
    if (m=="04"){
        if (d>="20"){
            h= 'Taurus'
        }
    }
    if (m=="05"){
        if (d<="20"){
            h= 'Taurus'
        }
    }
    if (m=="05"){
        if (d>="21"){
            h= 'Gemini'
        }
    }
    if (m=="06"){
        if (d<="21"){
            h= 'Gemini'
        }
    }
    if (m=="06"){
        if (d>="22"){
            h= 'Cancer'
        }
    }
    if (m=="07"){
        if (d<="22"){
            h= 'Cancer'
        }
    } 
    if (m=="07"){
        if (d>="23"){
            h= 'Leo'
        }
    }
    if (m=="08"){
        if (d<="22"){
            h= 'Leo'
        }
    } 
    if (m=="08"){
        if (d>="23"){
            h= 'Virgo'
        }
    }
    if (m=="09"){
        if (d<="22"){
            h= 'Virgo'
        }
    } 
    if (m=="09"){
        if (d>="23"){
            h= 'Libra'
        }
    }
    if (m=="10"){
        if (d<="23"){
            h= 'Libra'
        }
    }  
    if (m=="10"){
        if (d>="24"){
            h= 'Scorpio'
        }
    }
    if (m=="11"){
        if (d<="21"){
            h= 'Scorpio'
        }
    }
    if (m=="11"){
        if (d>="22"){
            h= 'Sagittarius'
        }
    }
    if (m=="12"){
        if (d<="20"){
            h= 'Sagittarius'
        }
    } 
    if (m=="12"){
        if (d>="21"){
            h= 'Capricorn'
        }
    }
    if (m=="01"){
        if (d<="20"){
            h= 'Capricorn'
        }
    }  
    if (m=="01"){
        if (d>="21"){
            h= 'Aquarius'
        }
    }
    if (m=="02"){
        if (d<="19"){
            h= 'Aquarius'
        }
    }
    if (m=="02"){
        if (d>="20"){
            h= 'Pisces'
        }
    }
    if (m=="03"){
        if (d<="20"){
            h= 'Pisces'
        }
    }
    
    return(h)
}
library(shiny)


shinyServer(function(input, output) {
    
    
        

    output$oid1 <- renderPrint({input$id1}) 
    output$odate <- renderPrint({input$date}) 
    output$oid2 <- renderPrint({
        hor(input$date)
        })



})
