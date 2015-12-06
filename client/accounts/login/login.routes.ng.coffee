'use strict'

angular.module 'catApp'
.config ($stateProvider) ->
  $stateProvider
  .state 'login-list',
    url: '/login'
    templateUrl: 'client/accounts/login/login-list.view.html'
    controller: 'LoginListCtrl'
  .state 'login-detail',
    url: '/login/:loginId'
    templateUrl: 'client/accounts/login/login-detail.view.html'
    controller: 'LoginDetailCtrl'
