class Bb1.Routers.Images extends Backbone.Router
  routes:
    ''    :'index'
    'show/:id':'show'

  initialize: ->
    @collection = new Bb1.Collections.Images()
    @collection.fetch()

  index: ->
    view = new Bb1.Views.Images({el:'#main', collection: @collection})

  show: (id) ->
