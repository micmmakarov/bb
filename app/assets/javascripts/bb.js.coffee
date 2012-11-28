window.Bb =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  initialize: ->
    new Bb.Routers.Images()
    Backbone.history.start()

$(document).ready ->
  Bb.initialize()
