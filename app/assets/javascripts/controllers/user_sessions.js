
/**
 * @ngdoc function
 * @name bikeRepairApp.controller:UserSessionsCtrl
 * @description
 * # UserSessionsCtrl
 * Controller of the bikeRepairApp
 */
angular.module('bikeRepairApp')
  .controller('UserSessionsCtrl', ['$scope', function ($scope) {
     $scope.$on('auth:login-error', function(ev, reason) {
      $scope.error = reason.errors[0];
    });
  }]);
