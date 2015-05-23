'use strict';

/* Controllers */

angular.module('myApp.controllers', []).
  controller('HeadController', ['$scope', 'Session', function($scope, Session) {
    $scope.sessions = Session.sessions
  }])
  .controller('StudyController', [function() {

  }])
  .controller('StaffController', [function() {

  }])
  .controller('PublicationsController', [function() {

  }])
  .controller('LinksController', [function() {

  }])
  .controller('AreasController', [function() {

  }])
  .controller("ContactsCreateController", ['$scope', '$location', 'Contacto',
    function($scope, $location, Contacto) {
      $scope.createNewComment = function(contact) {
        Contacto.create(contact);
        $location.path('/clients/index');
      };
  }])
  .controller("ContactsIndexController", ['$scope', 'Contacto',
    function($scope, Contacto) {
      $scope.contacts = Contacto.query();
      $scope.delete = function(contact) {
      contact.$remove();
      $scope.contacts = Contacto.query();
    };
    }])
  .controller("ContactsShowController", ['$scope', '$routeParams', '$resource','Contacto',
    function($scope, $routeParams, $resource, Contacto) {
    $scope.id = $routeParams.contactId;
      $scope.contact = Contacto.get({id: $scope.id}, function(contact) {
        $scope.name = contact.name;
        $scope.email = contact.email;
        $scope.phone = contact.phone;
        $scope.comment = contact.comment;
      });
  }]);
