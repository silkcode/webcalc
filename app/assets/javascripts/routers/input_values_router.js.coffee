class Webcalc.Routers.InputValues extends Backbone.Router
  routes:
    '' : 'index'
    'entries/:id' : 'show'

  initialize: ->
    @collection = new Webcalc.Collections.InputValues()
    @collection.fetch()

  index: ->
    view = new Webcalc.Views.InputValuesIndex(collection: @collection)
    $('#calc').html(view.render().el)

  show: ->
    view = new Webcalc.Views.InputValuesIndex(collection: @collection)
    $('#calc').html(view.render().el)
