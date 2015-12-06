'use strict'

angular.module 'catApp'
.config ($stateProvider) ->
  $stateProvider
  .state 'resetPsw-list',
    url: '/reset-psw'
    templateUrl: 'client/accounts/reset-psw/reset-psw-list.view.html'
    controller: 'ResetPswListCtrl'
  .state 'resetPsw-detail',
    url: '/reset-psw/:resetPswId'
    templateUrl: 'client/accounts/reset-psw/reset-psw-detail.view.html'
    controller: 'ResetPswDetailCtrl'
