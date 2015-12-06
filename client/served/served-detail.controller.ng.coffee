'use strict'

angular.module 'catApp'
.controller 'ServedDetailCtrl', ($scope, $stateParams, $meteor) ->
  $scope.served = $scope.$meteorObject Served, $stateParams.servedId
  $scope.$meteorSubscribe('served')
  
  $scope.save = () ->
    if $scope.form.$valid
      $scope.served.save().then(
        (numberOfDocs) ->
          console.log 'save successful, docs affected ', numberOfDocs
        (error) ->
          console.log 'save error ', error
      )
        
  $scope.reset = () ->
    $scope.served.reset()
