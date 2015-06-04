"use strict";

var cifa3comApp = angular.module('cifa3comApp', ['ngRoute']);

cifa3comApp.config(function($routeProvider) {
    $routeProvider
        .when('/home', {
            templateUrl: 'partials/home.html',
            controller : 'homeController'
        })
        .when('/movies', {
            templateUrl: 'partials/movies.html',
            controller : 'moviesController'
        })
        .when('/movies/edit/:id', {
            templateUrl: 'partials/edit.html',
            controller: 'editMovieController'
        })
        .otherwise({
            redirectTo: '/home'
        });
});
