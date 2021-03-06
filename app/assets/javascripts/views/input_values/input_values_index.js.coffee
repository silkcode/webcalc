class Webcalc.Views.InputValuesIndex extends Backbone.View

  template: JST['input_values/index']

  events:
    'submit #new_input_value': 'createInputValue'

  initialize: ->
    @collection.on('reset', @render, this)
    @collection.on('add', @appendInputValue, this)

  render: ->
    $(@el).html(@template())
    @collection.each(@appendInputValue)
    this

  appendInputValue: (input_value)->
    view = new Webcalc.Views.InputValue(model: input_value)
    $('#input_values').append(view.render().el)

  createInputValue: (event) ->
    event.preventDefault()
    @collection.create name: '', result: '', value: '',
      wait: true
      success: -> $('#new_input_value')[0].reset()
