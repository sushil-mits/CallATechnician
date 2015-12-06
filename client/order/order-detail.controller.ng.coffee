'use strict'

angular.module 'catApp'
.controller 'OrderDetailCtrl', ($scope, $stateParams, $meteor) ->
  $scope.order = $scope.$meteorObject Order, $stateParams.orderId
  $scope.$meteorSubscribe('order')
  
  $scope.save = () ->
    if $scope.form.$valid
      $scope.order.save().then(
        (numberOfDocs) ->
          console.log 'save successful, docs affected ', numberOfDocs
        (error) ->
          console.log 'save error ', error
      )
        
  $scope.reset = () ->
    $scope.order.reset()
