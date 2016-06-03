class window.Post
  constructor:->
    @audio()
    @link()
    @quote()
    @text()
    @video()

  audio:->
   $('#audio').load('https://dl.dropbox.com/s/su0sywdfue4mlqm/audio.html')

  link:->
    $('#link').load('https://dl.dropbox.com/s/nvzeoohxo39pvej/link.html')

  quote:->
    $('#quote').load('https://dl.dropbox.com/s/y9smrtuyqwuv7w7/quote.html')

  text:->
    $('#text').load('https://dl.dropbox.com/s/x6811zfo9sf0fbc/text.html')

  video:->
    $('#video').load('https://dl.dropbox.com/s/xzaxcpntp062wsx/video.html')
