# Module
  @bad = angular.module('badModule', [])

  @bad.factory 'Data', ->
    sayHello: (text) ->
      "Hello #{text}"

# Main App
  @app = angular.module('BlinkApp', ['badModule'])

# Controller
  @AppController = ($scope, Data) ->
    $scope.hello = Data.sayHello('World')
