class Main
  constructor: ->
    console.log "Main::constructor"
    $ =>
      @showHeader()
      @setupEvents()

  showHeader: ->
    $('header').addClass('show')

  setupEvents: ->
    $(window).on "scroll", (event) ->
      scrollTop = $(document).scrollTop()
      if (scrollTop >= 480)
        $('.animate-480').addClass('activated')
      if (scrollTop <= 200)
        $('.animate-480').removeClass('activated')


module.exports = new Main()