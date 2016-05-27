class window.Comics
  constructor: ->
          
  getRobotHugs: ->
    @cleanUp()
    url = "https://query.yahooapis.com/v1/public/yql?q=select%20*%20from%20rss%20where%20url%3D'http%3A%2F%2Fwww.robot-hugs.com%2Ffeed%2F'&format=json&env=store%3A%2F%2Fdatatables.org%2Falltableswithkeys" 
    $.getJSON url, (res) ->
      console.log(res)
      img = res.query.results.item[0].p.a.img
      title = res.query.results.item[0].title
      tag = "<img src='#{img.src}' alt='#{img.alt}' />" 
      console.log(img)
      console.log(tag)
      $('.modal-title').prepend("Robot-Hugs: " + title)
      $('.modal-body').prepend(tag) 
    , "jsonp"

  getXKCD: ->
    @cleanUp()
    url = "https://query.yahooapis.com/v1/public/yql?q=select%20*%20from%20json%20where%20url%3D'http%3A%2F%2Fxkcd.com%2Finfo.0.json'&format=json&env=store%3A%2F%2Fdatatables.org%2Falltableswithkeys"
    $.getJSON url, (res) ->
      console.log(res)
      img = res.query.results.json.img
      title = res.query.results.json.title
      alt = res.query.results.json.alt
      tag = "<img src='#{img}' alt='#{alt}' />"
      $('.modal-title').prepend("xkcd: " + title)
      $('.modal-body').prepend(tag)
    , "jsonp"

  cleanUp: ->
    $('.modal-title').empty()
    $('.modal-body').empty()

