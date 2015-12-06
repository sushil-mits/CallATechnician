'use strict'

angular.module 'catApp'
.config ($stateProvider) ->
  $stateProvider
  .state 'signup-list',
    url: '/signup'
    templateUrl: 'client/signup/signup-list.view.html'
    controller: 'SignupListCtrl'
  .state 'signup-detail',
    url: '/signup/:signupId'
    templateUrl: 'client/signup/signup-detail.view.html'
    controller: 'SignupDetailCtrl'
