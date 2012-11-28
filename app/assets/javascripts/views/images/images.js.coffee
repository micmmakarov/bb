class Bb1.Views.Images extends Backbone.View

  events:
    'click #submit': 'newIdea'

  initialize: ->
    @collection.on('reset', @render, this)
    @collection.on('add', @addImage, this)

  render: ->
    $(@el).html HandlebarsTemplates['images']()
    @collection.each(@addImage)

  addImage: (image) ->
    view = new Bb1.Views.Image({model: image})
    $('#images').prepend(view.render().el)

  newIdea: (e) ->
    e.preventDefault()
    alert $("#new-idea").val()
    attributes = {title: $("#new-idea").val()}
    @collection.create(attributes)
