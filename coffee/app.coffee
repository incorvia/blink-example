# Main App
  @App = angular.module('BlinkApp', ['appData'])

# Modules
  appData = angular.module('appData', []).factory 'Data', ->
    alert "Hello"

# Controller
  @AppController = ($scope, Data) ->
