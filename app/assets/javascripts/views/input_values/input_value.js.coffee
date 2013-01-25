class Webcalc.Views.InputValue extends Backbone.View
  template: JST['input_values/input_value']
  tagName: 'li'

  events:
    'input': 'recalculateInputValues'
    'changeInput': 'changeInputValue'

  initialize: ->
    @model.on('change: value', @render, this)
    @model.on('changeInput', @changeInputValue, this)

  render: ->
    $(@el).html(@template(input_value: @model))
    this

  changeInputValue: ->
    @model.fetch()             #todo: solve problem with update model
    $(@el).html(@template(input_value: @model))
    this

  recalculateInputValues: (event) ->
    event.preventDefault()
    model = this.model
    value = $('#' + model.get('_id')).val()
    model.set("value": value)
    model.save
      wait: true
    model.trigger('changeInput')
