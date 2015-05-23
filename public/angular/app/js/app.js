'use strict';


// Declare app level module which depends on filters, and services
angular.module('myApp', [
  'autofocus',
  'ngRoute',
  'ngResource',
  'myApp.filters',
  'myApp.services',
  'myApp.directives',
  'myApp.controllers'
]).
config(['$routeProvider', function($routeProvider) {
  $routeProvider.when('/study', {
    templateUrl: 'partials/sessions/study.html',
    controller: 'StudyController'});
  $routeProvider.when('/staff', {
    templateUrl: 'partials/sessions/staff.html',
    controller: 'StaffController'});
  $routeProvider.when('/areas', {
    templateUrl: 'partials/sessions/areas.html',
    controller: 'AreasController'});
  $routeProvider.when('/publications', {
    templateUrl: 'partials/sessions/publications.html',
    controller: 'PublicationsController'});
  $routeProvider.when('/links', {
    templateUrl: 'partials/sessions/links.html',
    controller: 'LinksController'});
  $routeProvider.when('/clients', {
    templateUrl: 'partials/contacts/create.html',
    controller: 'ContactsCreateController'});
  $routeProvider.when('/clients/index', {
    templateUrl: 'partials/contacts/index.html',
    controller: 'ContactsIndexController'});
  $routeProvider.when('/clients/show/:contactId', {
    templateUrl: 'partials/contacts/show.html',
    controller: 'ContactsShowController'
    });
  $routeProvider.otherwise({redirectTo: '/study'});
}])
.config(['$locationProvider', function($locationProvider) {
  $locationProvider.html5Mode(false);
}]);
