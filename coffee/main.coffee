window.onload = () ->
  menu = new Menu()

  comics = new Comics()
  $('#robot-hugs').click () ->
    comics.getRobotHugs()
  $('#xkcd').click () ->
    comics.getXKCD()
  
  interests = new Interests()
  $('#tech').click () ->
    interests.getTech()
  $('#science').click () ->
    interests.getScience()
  $('#photography').click () ->
    interests.getPhotography()
  $('#travel').click () ->
    interests.getTravel()
  $('#graphic').click () ->
    interests.getGraphic() 

