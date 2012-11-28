window.Bb =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  initialize: ->
    new Bb.Routers.Images()
    Backbone.history.start({pushState: true})

$(document).ready ->
  Bb.initialize()
