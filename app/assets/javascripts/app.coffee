vocab = angular.module('vocab',[
  "templates",
  "ngRoute",
  "ngResource"
])

vocab.config([ '$routeProvider',
  ($routeProvider)->
    $routeProvider
    .when('/',
      templateUrl: "index.html"
    )
])