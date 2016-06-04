window.onload = () ->
  sidebar = new SideBar()

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
  $('#education').click () ->
    interests.getEducation()
  $('#photography').click () ->
    interests.getPhotography()
  $('#travel').click () ->
    interests.getTravel()
  $('#graphic').click () ->
    interests.getGraphic() 

###
  paperclips = new Paperclips()
  $('#playlist').click () ->
    paperclips.getPlaylist()
###
