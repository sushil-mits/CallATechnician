'use strict'

angular.module 'catApp'
.controller 'CustomerDetailCtrl', ($scope, $stateParams, $meteor) ->
  $scope.customer = $scope.$meteorObject Customer, $stateParams.customerId
  $scope.$meteorSubscribe('customer')
  
  $scope.save = () ->
    if $scope.form.$valid
      $scope.customer.save().then(
        (numberOfDocs) ->
          console.log 'save successful, docs affected ', numberOfDocs
        (error) ->
          console.log 'save error ', error
      )
        
  $scope.reset = () ->
    $scope.customer.reset()
