window.Bb1 =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  initialize: ->
    new Bb1.Routers.Images()
    Backbone.history.start({pushState: true})


$(document).ready ->
  Bb1.initialize()
