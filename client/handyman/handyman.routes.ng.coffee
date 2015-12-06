'use strict'

angular.module 'catApp'
.config ($stateProvider) ->
  $stateProvider
  .state 'handyman-list',
    url: '/handyman'
    templateUrl: 'client/handyman/handyman-list.view.html'
    controller: 'HandymanListCtrl'
    resolve:
      currentUser: ['$meteor', ($meteor) ->
        $meteor.requireUser()
      ]
  .state 'handyman-detail',
    url: '/handyman/:handymanId'
    templateUrl: 'client/handyman/handyman-detail.view.html'
    controller: 'HandymanDetailCtrl'
    resolve:
      currentUser: ['$meteor', ($meteor) ->
        $meteor.requireUser()
      ]
