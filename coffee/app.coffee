# Module
  @bad = angular.module('badModule', [])

  @bad.factory 'fromBadFactory', ->
    sayHello: (text) ->
      "Hello #{text}"

# Main App
  @good = angular.module('myApp', ['badModule'])

# Controller
  @GoodCtrl = ($scope, fromBadFactory) ->
    $scope.fromBadFactory = fromBadFactory.sayHello('World')
