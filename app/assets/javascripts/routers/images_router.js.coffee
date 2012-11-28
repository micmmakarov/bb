class Bb.Routers.Images extends Backbone.Router
  routes:
    ''        : 'index'
    'show/:id': 'show'

  index: ->
    alert "hello from index!"

  show: (id) ->
    alert "The id is #{id}"

  initialize: ->
    @collection = new Bb.Collections.Images()
