(function(angular) {
  var AppController = function($scope, Track) {
    Trac.query(function(response) {
      $scope.tracks = response ? response : [];
    });
    
    $scope.addTrack = function(description) {
      new Track({
        track: track,
        checked: false
      }).$save(function(track) {
        $scope.tracks.push(track);
      });
      $scope.newTrack = "";
    };
    
    $scope.updateItem = function(item) {
      item.$update();
    };
    
    $scope.deleteItem = function(item) {
      item.$remove(function() {
        $scope.items.splice($scope.items.indexOf(item), 1);
      });
    };
  };
  
  AppController.$inject = ['$scope', 'Item'];
  angular.module("myApp.controllers").controller("AppController", AppController);
}(angular));