(function(angular) {
  var TrackFactory = function($resource) {
    return $resource('/tracks/:id', {
      id: '@id'
    }, {
      update: {
        method: "PUT"
      },
      remove: {
        method: "DELETE"
      }
    });
  };
  
  TrackFactory.$inject = ['$resource'];
  angular.module("myApp.services").factory("Track", TrackFactory);
}(angular));
