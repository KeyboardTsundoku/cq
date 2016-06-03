class window.Menu
  constructor:->
    for m in menuJSON
      console.log(m)
      @setMenuItem(m, '#menu')

  setMenuItem: (item, href) ->
    console.log("currently in set menu item")
    console.log(item.name)
    console.log(item.href)
    console.log(item.icon)
    if item.type is "parent"
      $(href).append("<a aria-controls=#{item.name} aria-expanded='false' class='list-group-item nav' data-toggle='collapse' href=#{item.href}>#{item.icon} #{item.name}</a><div class='collapse' id='#{item.href.substr(1)}'></div>")
    else if item.type is "link"
      $(href).append("<a class='list-group-item nav' href=#{item.href}  target='_blank'>#{item.icon} #{item.name}</a>")
    else
      $(href).append("<a class='list-group-item nav' data-target='#focus' data-toggle='modal' id=#{item.href.substr(1)}>#{item.icon} #{item.name}</a>")

    if item.depth
      @setSubMenu(item.depth, item.href)

  setSubMenu: (menu, href) ->
    for m in menu
      console.log(m)
      $(href).append("<div class='collapse' id=#{href.substr(1)}>")
      @setMenuItem(m, href)
