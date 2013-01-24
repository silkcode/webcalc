window.Webcalc =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  initialize: ->
    new Webcalc.Routers.InputValues()
    Backbone.history.start(pushState: true)

$(document).ready ->
  Webcalc.initialize()
