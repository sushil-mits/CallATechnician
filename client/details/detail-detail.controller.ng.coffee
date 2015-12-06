'use strict'

angular.module 'catApp'
.controller 'DetailDetailCtrl', ($scope, $stateParams, $meteor) ->
  $scope.detail = $scope.$meteorObject Details, $stateParams.detailId
  $scope.$meteorSubscribe('details')
  
  $scope.save = () ->
    if $scope.form.$valid
      $scope.detail.save().then(
        (numberOfDocs) ->
          console.log 'save successful, docs affected ', numberOfDocs
        (error) ->
          console.log 'save error ', error
      )
        
  $scope.reset = () ->
    $scope.detail.reset()
