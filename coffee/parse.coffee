class window.Parse
  constructor: ->
    rh = $('#robot-hugs')
    rh.click(@getRobotHugs())

  getRobotHugs: ->
    url = "https://query.yahooapis.com/v1/public/yql?q=select%20*%20from%20rss%20where%20url%3D'http%3A%2F%2Fwww.robot-hugs.com%2Ffeed%2F'&format=json&env=store%3A%2F%2Fdatatables.org%2Falltableswithkeys" 
    console.log(url)
    console.log("what the fuck is going on?")
    $.getJSON url, (res) ->
      console.log("the fuck?")
      console.log(res)
      img = res.query.results.item[0].p.a.img
      title = res.query.results.item[0].title
      tag = "<img src='#{img.src}' alt='#{img.alt}' />" 
      console.log(img)
      console.log(tag)
      $('.modal-title').prepend("Robot-Hugs: " + title)
      $('.modal-body').prepend(tag) 
    , "jsonp"

