/* 
 * Description - Angular Script for reading the data from the web-server!
 * Created By - Yatin Batra  
 * */

var app = angular.module("app", ['angular.filter']);

app.controller("ctrl", ['$scope', '$http', function($scope, $http) {

	$scope.json_data = null; 			
	
	$scope.getData = function() {
		$http({		
			method: "GET",
			url: 'resource/config/bands.json' 
		}).then(function(response) {
			$scope.json_data = response.data;		

var groups = data.reduce(function(obj,item){
    obj[item.recordLabel] = obj[item.recordLabel] || [];
    obj[item.recordLabel].push(item.name);
    return obj;
}, {});
var myArray = Object.keys(groups).map(function(recordLabel){
    return {team: recordLabel, name: groups[recordLabel]};
});
		}, function(response) {			
			console.log("Failure");
			alert("There is an error");
		});
	};
	
}]);