class Webcalc.Views.InputValuesIndex extends Backbone.View

  template: JST['input_values/index']

  initialize: ->
    @collection.on('reset', @render, this)

  render: ->
    $(@el).html(@template(input_values: @collection))
    this