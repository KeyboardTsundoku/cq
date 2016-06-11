class window.Modal
  constructor: ->

  getXKCD: ->
    $('.modal-title').empty()
    $('#comicModal').siblings().hide()
    $('#comicModal').empty()
    url = "https://query.yahooapis.com/v1/public/yql?q=select%20*%20from%20json%20where%20url%3D'http%3A%2F%2Fxkcd.com%2Finfo.0.json'&format=json&env=store%3A%2F%2Fdatatables.org%2Falltableswithkeys"
    $.getJSON url, (res) ->
      console.log(res)
      img = res.query.results.json.img
      title = res.query.results.json.title
      alt = res.query.results.json.alt
      tag = "<img src='#{img}' alt='#{alt}' />"
      $('.modal-title').prepend("xkcd: " + title)
      $('#comicModal').prepend(tag)
      $('#comicModal').show()
    , "jsonp"
  
  getRobotHugs: ->
    $('.modal-title').empty()
    $('#comicModal').siblings().hide()
    $('#comicModal').empty()
    url = "https://query.yahooapis.com/v1/public/yql?q=select%20*%20from%20rss%20where%20url%3D'http%3A%2F%2Fwww.robot-hugs.com%2Ffeed%2F'&format=json&env=store%3A%2F%2Fdatatables.org%2Falltableswithkeys"
    $.getJSON url, (res) ->
      img = res.query.results.item[0].p.a.img
      title = res.query.results.item[0].title
      tag = "<img src='#{img.src}' alt='#{img.alt}' />"
      $('.modal-title').prepend("Robot Hugs: " + title)
      $('#comicModal').prepend(tag)
      $('#comicModal').show()
    , "jsonp"

  getNYDC: ->
    $('.modal-title').empty()
    $('#comicModal').siblings().hide()
    $('#comicModal').empty()
    url = "https://query.yahooapis.com/v1/public/yql?q=select%20*%20from%20rss%20where%20url%20%3D%22http%3A%2F%2Fwww.comicsyndicate.org%2FFeed%2FThe%2520New%2520Yorker%2520Daily%2520Cartoon%22&format=json&env=store%3A%2F%2Fdatatables.org%2Falltableswithkeys"
    $.getJSON url, (res) ->
      $('.modal-title').prepend("New York Daily Cartoon")
      tag = res.query.results.item[0].description
      $('#comicModal').prepend(tag)
      $('#comicModal').show()
    , "jsonp"
    

  getDilbert: ->
    $('.modal-title').empty()
    $('#comicModal').siblings().hide()
    $('#comicModal').empty()
    url = "https://query.yahooapis.com/v1/public/yql?q=select%20*%20from%20rss%20where%20url%20%3D%22http%3A%2F%2Fwww.comicsyndicate.org%2FFeed%2FDilbert%22&format=json&env=store%3A%2F%2Fdatatables.org%2Falltableswithkeys"
    $.getJSON url, (res) ->
      $('.modal-title').prepend("Dilbert")
      tag = res.query.results.item[0].description
      $('#comicModal').prepend(tag)
      $('#comicModal').show()
    , "jsonp"
  
  getGarfield: ->
    $('.modal-title').empty()
    $('#comicModal').siblings().hide()
    $('#comicModal').empty()
    url = "https://query.yahooapis.com/v1/public/yql?q=select%20*%20from%20rss%20where%20url%20%3D%22http%3A%2F%2Fwww.comicsyndicate.org%2FFeed%2FGarfield%22&format=json&env=store%3A%2F%2Fdatatables.org%2Falltableswithkeys"
    $.getJSON url, (res) ->
      $('.modal-title').prepend("Garfield")
      tag = res.query.results.item[0].description
      $('#comicModal').prepend(tag)
      $('#comicModal').show()
    , "jsonp"

  getTech: ->
    $('.modal-title').empty().prepend("Technology")
    $('#techModal').siblings().hide()
    $('#techModal').show()

  getScience: ->
    $('.modal-title').empty().prepend("Science")
    $('#sciModal').siblings().hide()
    $('#sciModal').show()

  getEducation: ->
    $('.modal-title').empty().prepend("Education")
    $('#edModal').siblings().hide()
    $('#edModal').show()

  getPhotography: ->
    $('.modal-title').empty().prepend("Photography")
    $('#photoModal').siblings().hide()
    $('#photoModal').show()

  getTravel: ->
    $('.modal-title').empty().prepend("Travel")
    $('#travelModal').siblings().hide()
    $('#travelModal').show()

  getArt: ->
    $('.modal-title').empty().prepend("Art")
    $('#artModal').siblings().hide()
    $('#artModal').show()

  getOnRepeats: ->
    $('.modal-title').empty().prepend("On Repeats")
    $('#onrepeatsModal').siblings().hide()
    $('#onrepeatsModal').show()
