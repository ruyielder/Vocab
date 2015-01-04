vocab = angular.module('vocab',[
  "templates",
  "ngRoute",
])

vocab.config([ '$routeProvider',
  ($routeProvider)->
    $routeProvider
    .when('/',
      templateUrl: "index.html"
    )
])