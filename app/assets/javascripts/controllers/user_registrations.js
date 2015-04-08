/**
 * @ngdoc function
 * @name bikeRepairApp.controller:UserRegistrationsCtrl
 * @description
 * # UserRegistrationsCtrl
 * Controller of the bikeRepairApp
 */
angular.module('bikeRepairApp')
  .controller('UserRegistrationsCtrl', ['$scope', function ($scope) {
    $scope.handleRegBtnClick = function() {
      $auth.submitRegistration($scope.registrationForm);
    };
  }]);
