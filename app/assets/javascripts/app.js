
/**
* @ngdoc overview
* @name bikeRepairApp
* @description
* # bikeRepairApp
*
* Main module of the application.
*/

angular
.module('bikeRepairApp', [
'ngAnimate',
'ngCookies',
'ngResource',
'ngRoute',
'ngSanitize',
'ngTouch',
'ng-token-auth'
])
.config(function ($routeProvider) {
  $routeProvider
  .when('/', {
    templateUrl: 'views/main.html',
    controller: 'MainCtrl'
  })
  .when('api/auth/sign_in', {
    templateUrl: 'views/user_sessions/new.html',
    controller: 'UserSessionCtrl'
  })
  .when('/about', {
    templateUrl: 'views/about.html',
    controller: 'AboutCtrl'
  })
  .otherwise({
    redirectTo: '/'
  });
});

// app.run(['$rootScope', '$location', function($rootScope, $location) {
//   $rootScope.$on('auth:login-success', function() {
//     $location.path('/');
//   });
// }]);
