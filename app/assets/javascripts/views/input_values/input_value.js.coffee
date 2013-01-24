class Webcalc.Views.InputValue extends Backbone.View
  template: JST['input_values/input_value']
  tagName: 'li'

  render: ->
    $(@el).html(@template(input_value: @model))
    this
