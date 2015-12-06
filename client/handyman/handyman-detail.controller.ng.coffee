'use strict'

angular.module 'catApp'
.controller 'HandymanDetailCtrl', ($scope, $stateParams, $meteor) ->
  $scope.handyman = $scope.$meteorObject Handyman, $stateParams.handymanId
  $scope.$meteorSubscribe('handyman')
  
  $scope.save = () ->
    if $scope.form.$valid
      $scope.handyman.save().then(
        (numberOfDocs) ->
          console.log 'save successful, docs affected ', numberOfDocs
        (error) ->
          console.log 'save error ', error
      )
        
  $scope.reset = () ->
    $scope.handyman.reset()
