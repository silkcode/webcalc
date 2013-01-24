class Webcalc.Routers.InputValues extends Backbone.Router
  routes:
    '' : 'index'

  initialize: ->
    @collection = new Webcalc.Collections.InputValues()
    @collection.fetch()

  index: ->
    view = new Webcalc.Views.InputValuesIndex(collection: @collection)
    $('#container').html(view.render().el)