window.onload = () ->
  sidebar = new SideBar()
    
  modal = new Modal()
  $('#xkcd').click () ->
    modal.getXKCD()
  $('#robot-hugs').click () ->
    modal.getRobotHugs()
  $('#nydc').click () ->
    modal.getNYDC()
  $('#dilbert').click () ->
    modal.getDilbert()
  $('#garfield').click () ->
    modal.getGarfield()
  $('#tech').click () ->
    modal.getTech()
  $('#science').click () ->
    modal.getScience()
  $('#ed').click () ->
    modal.getEducation()
  $('#photo').click () ->
    modal.getPhotography()
  $('#travel').click () ->
    modal.getTravel()
  $('#art').click () ->
    modal.getArt()
  $('#onrepeats').click () ->
    modal.getOnRepeats()

###
  paperclips = new Paperclips()
  $('#playlist').click () ->
    paperclips.getPlaylist()
###
