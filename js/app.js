    //Injected module
var bad = angular.module('badModule', []);

bad.factory('fromBadFactory', function(){
  return {
    sayHello: function(text){
      return "Hello " + text;
    }
  }
});

//App module
var good = angular.module('myApp', ['badModule']);

//App module
function GoodCtrl($scope, fromBadFactory)
{
  $scope.fromBadFactory = fromBadFactory.sayHello("World");
}

