class window.Interests
  constructor: ->

  getTech: ->
    @cleanUp()
    $('.modal-title').prepend("Technology")
    tag = '<a data-pin-do="embedBoard" data-pin-board-width="400" data-pin-scale-height="240" data-pin-scale-width="80" href="https://au.pinterest.com/comfyquiet/tech/"></a>'
    $('modal-body').prepend(tag)

  getScience: ->
    @cleanUp()
    $('.modal-title').prepend("Science")
    tag = '<a data-pin-do="embedBoard" data-pin-board-width="400" data-pin-scale-height="240" data-pin-scale-width="80" href="https://au.pinterest.com/comfyquiet/science/"></a>'
    $('modal-body').prepend(tag)

  getEducation: ->
    @cleanUp()
    $('.modal-title').prepend("Science")
    tag = '<a data-pin-do="embedBoard" data-pin-board-width="400" data-pin-scale-height="240" data-pin-scale-width="80" href="https://au.pinterest.com/comfyquiet/education/"></a>'
    $('modal-body').prepend(tag)

  getPhotography: ->
    @cleanUp()
    $('.modal-title').prepend("Photography")
    tag = '<a data-pin-do="embedBoard" data-pin-board-width="400" data-pin-scale-height="240" data-pin-scale-width="80" href="https://au.pinterest.com/comfyquiet/my-photographs/"></a>'
    $('modal-body').prepend(tag)
    
  getTravel: ->
    @cleanUp()
    $('.modal-title').prepend("Travel")
    tag = '<a data-pin-do="embedBoard" data-pin-board-width="400" data-pin-scale-height="240" data-pin-scale-width="80" href="https://au.pinterest.com/comfyquiet/travel/"></a>'
    $('modal-body').prepend(tag)
    
  getArt: ->
    @cleanUp()
    $('.modal-title').prepend("Art")
    tag = '<a data-pin-do="embedBoard" data-pin-board-width="400" data-pin-scale-height="240" data-pin-scale-width="80" href="https://au.pinterest.com/comfyquiet/art/"></a>'
    $('modal-body').prepend(tag)
  
  cleanUp: ->
    $('.modal-title').empty()
    $('.modal-body').empty()
