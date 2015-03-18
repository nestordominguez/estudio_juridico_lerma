'use strict';

/* Controllers */

angular.module('myApp.controllers', []).
  controller('EstudioController', ['$scope', '$http', function($scope, $http) {
    $http.get('/studio/estudio').
      success(function (data, status, headers, config) {
        $scope.seccion = data
      }).
      error(function (data, status, headers, config) {

    })
  }])
  .controller('MyCtrl2', [function() {

  }]);
