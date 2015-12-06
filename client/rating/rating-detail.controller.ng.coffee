'use strict'

angular.module 'catApp'
.controller 'RatingDetailCtrl', ($scope, $stateParams, $meteor) ->
  $scope.rating = $scope.$meteorObject Rating, $stateParams.ratingId
  $scope.$meteorSubscribe('rating')
  
  $scope.save = () ->
    if $scope.form.$valid
      $scope.rating.save().then(
        (numberOfDocs) ->
          console.log 'save successful, docs affected ', numberOfDocs
        (error) ->
          console.log 'save error ', error
      )
        
  $scope.reset = () ->
    $scope.rating.reset()
