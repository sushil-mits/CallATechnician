'use strict'

angular.module 'catApp'
.controller 'ResetPswDetailCtrl', ($scope, $stateParams, $meteor) ->
  $scope.resetPsw = $scope.$meteorObject ResetPsw, $stateParams.resetPswId
  $scope.$meteorSubscribe('resetPsw')
  
  $scope.save = () ->
    if $scope.form.$valid
      $scope.resetPsw.save().then(
        (numberOfDocs) ->
          console.log 'save successful, docs affected ', numberOfDocs
        (error) ->
          console.log 'save error ', error
      )
        
  $scope.reset = () ->
    $scope.resetPsw.reset()
