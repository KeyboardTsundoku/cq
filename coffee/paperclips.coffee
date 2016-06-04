###
class window.PaperClips
  constructor:->
  
  getPlaylist: ->
    @cleanUp()
    $('modal-title').prepend("My Playlist")
    tag = '<iframe src="https://play.google.com/music/playlist/AMaBXylKskCXe8Z6-63NTWKiUCSI7dsvygl9nHI6O49b-nHbrwRfvPoW6PKH65GVGcC4BDP01L59uCys2-     6mQ-ASduXCB2mw_Q==" width="400" height="300"></iframe>'
    $('moda-body').prepend(tag)

  cleanUp: ->
    $('modal-title').empty()
    $('modal-body').empty()
###
