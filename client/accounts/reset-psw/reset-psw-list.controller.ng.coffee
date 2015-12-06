'use strict'

angular.module 'catApp'
.controller 'ResetPswListCtrl', ($scope, $meteor) ->
  $scope.page = 1
  $scope.perPage = 3
  $scope.sort = name_sort : 1
  $scope.orderProperty = '1'
  
  $scope.resetPsw = $scope.$meteorCollection () ->
    ResetPsw.find {}, {sort:$scope.getReactively('sort')}
  $meteor.autorun $scope, () ->
    $scope.$meteorSubscribe('resetPsw', {
      limit: parseInt($scope.getReactively('perPage'))
      skip: parseInt(($scope.getReactively('page') - 1) * $scope.getReactively('perPage'))
      sort: $scope.getReactively('sort')
    }, $scope.getReactively('search')).then () ->
      $scope.resetPswCount = $scope.$meteorObject Counts, 'numberOfResetPsw', false

  $meteor.session 'resetPswCounter'
  .bind $scope, 'page'
    
  $scope.save = () ->
    if $scope.form.$valid
      $scope.resetPsw.save $scope.newResetPsw
      $scope.newResetPsw = undefined
      
  $scope.remove = (resetPsw) ->
    $scope.resetPsw.remove resetPsw
    
  $scope.pageChanged = (newPage) ->
    $scope.page = newPage
    
  $scope.$watch 'orderProperty', () ->
    if $scope.orderProperty
      $scope.sort = name_sort: parseInt($scope.orderProperty)
