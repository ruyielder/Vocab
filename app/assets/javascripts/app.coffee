vocab = angular.module("vocab",[
  "templates",
  "ngRoute",
  "ngResource",
  "ng-rails-csrf"
])

vocab.config([ "$routeProvider",
  ($routeProvider)->
    $routeProvider
    .when("/",
      templateUrl: "index.html"
    )
    .when("/register",
      templateUrl: "register.html",
    )
])

vocab.factory("Registration", ($resource) ->
  $resource("registrations")
)

vocab.controller("RegisterFormController", ($scope, $location, Registration)->
  $scope.saveUser = (user) ->
    registration = new Registration({"user": user})
    registration.$save().then(
      (value) ->
        $location.path('/')
      ,
      (error) ->
        $scope.errors = (field) ->
          error.data.errors[field] or false
    )
)

