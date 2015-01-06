vocab = angular.module('vocab',[
  "templates",
  "ngRoute",
  "ngResource",
  "ng-rails-csrf"
])

vocab.config([ '$routeProvider',
  ($routeProvider)->
    $routeProvider
    .when('/',
      templateUrl: "index.html"
    )
])