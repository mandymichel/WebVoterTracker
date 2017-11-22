var myApp = angular.module('myApp', ['ngRoute']);

myApp.config(function ($routeProvider) {
	$routeProvider
	.when('/', {
			templateUrl: 'resources/pages/bio.html',
			controller: 'mainController'
	})
	.when('/second', {
		templateUrl: 'resources/pages/phil.html',
		controller: 'secondController'
	})
	.when('/third', {
		templateUrl: 'resources/pages/work.html',
		controller: 'thirdController'
	})
});

myApp.controller('mainController', ['$scope', '$location', '$log', function($scope, $location, $log) {
    
   $log.info($location.path());
    
}]);
myApp.controller('secondController', ['$scope', '$location', '$log', function($scope, $location, $log) {
    
	   $log.info($location.path());
	    
	}]);
myApp.controller('thirdController', ['$scope', '$location', '$log', function($scope, $location, $log) {
    
	   $log.info($location.path());
	    
	}]);