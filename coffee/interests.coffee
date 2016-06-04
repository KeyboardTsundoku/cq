class window.Interests
  constructor: ->

  getTech: ->
    $('.modal-title').empty().prepend("Technology")
    $('#techModal').siblings().hide() 
    $('#techModal').show()

  getScience: ->
    $('.modal-title').empty().prepend("Science")
    $('#sciModal').siblings().hide() 
    $('#sciModal').show()

  getEducation: ->
    $('.modal-title').empty().prepend("Science")
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

