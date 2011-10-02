classpath "lib/goson.jar,src"

uses github.GitHub


GitHub.listCommits( "carsongross", "Goson" ).each( \ c -> {
  print( "User : ${c.Author.Name}")  
  print( "       ${c.Author.Email}")  
  print( "Message : ${c.Message}")  
  print( "Date : ${c.CommittedDate}") //NB: committed date is an actual date.  Yay github for using a datetime compatible format!
  print( "Message : ${c.Url}")  
} )
