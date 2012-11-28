class Bb1.Views.Image extends Backbone.View
  tagName: 'div'
  className: 'image'

  events:
    'click .hilarious': 'like'

  initialize: ->
    @model.on('change', @render, this)


  like: (e) ->
    e.preventDefault()
    likes = @model.get('likes')
    likes = likes + 1
    @model.set('likes', likes)

  render: ->
    $(@el).html HandlebarsTemplates['image'](@model.toJSON())
    this