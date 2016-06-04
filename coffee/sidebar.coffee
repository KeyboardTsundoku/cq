class window.SideBar
  constructor:->
    for m in menuJSON
      @setMenuItem(m, '#sidebar', 0)

  setMenuItem: (item, href, level) ->
    # set sub level indents on menu 
    indent = ""
    if level is 1
      indent = "sub-level-a"

    if item.type is "parent"
      $(href).append("<a aria-controls=#{item.name} aria-expanded='false' class='list-group-item #{indent}' data-toggle='collapse' href=#{item.href}>#{item.icon} #{item.name}</a><div class='collapse' id='#{item.href.substr(1)}'></div>")
    else if item.type is "link"
      $(href).append("<a class='list-group-item #{indent}' href=#{item.href}  target='_blank'>#{item.icon} #{item.name}</a>")
    else
      $(href).append("<a class='list-group-item #{indent}' data-target='#focus' data-toggle='modal' id=#{item.id}>#{item.icon} #{item.name}</a>")

    if item.depth
      @setSubMenu(item.depth, item.href, level)

  setSubMenu: (menu, href, level) ->
    for m in menu
      $(href).append("<div class='collapse' id=#{href.substr(1)}>")
      @setMenuItem(m, href, level+1)
