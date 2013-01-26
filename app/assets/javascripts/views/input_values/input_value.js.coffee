class Webcalc.Views.InputValue extends Backbone.View
  template: JST['input_values/input_value']
  tagName: 'div'
  className: 'clear'

  events:
    'input': 'onInputChange'

  initialize: =>
    @model.bind('change', @changeResult)

  render: =>
    $(@el).html(@template(input_value: @model))
    this

  changeResult: =>
    $('#input_' + @model.get('id')).text(@model.get('result'))

  onInputChange: (e) =>
    @model.save { value: $(e.target).val() }