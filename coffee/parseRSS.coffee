class window.Parse
  constructor: (@rss)->

  convert: ->
    console.log(@rss)
    rss = @rss
    YUI().use 'yql', (Y) ->
      query = "select * from rss where url='#{rss}'"
      console.log(query)
      x = Y.YQL query, (q) ->
        console.log(q)
        r = q.query.results.item[0].p.a.img
        console.log(r)
        img = "<img src='#{r.src}' alt='#{r.alt}' />"
        console.log(img)
        $('#modal-item').prepend(img)

  display: ->
    console.log("Can this work??")

