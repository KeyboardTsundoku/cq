window.onload = () ->
  comics = new Comics()
  $('#robot-hugs').click () ->
    comics.getRobotHugs()
  $('#xkcd').click () ->
    comics.getXKCD()

