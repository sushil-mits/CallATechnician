'use strict'

angular.module 'catApp'
.config ($stateProvider) ->
  $stateProvider
  .state 'served-list',
    url: '/served'
    templateUrl: 'client/served/served-list.view.html'
    controller: 'ServedListCtrl'
    resolve:
      currentUser: ['$meteor', ($meteor) ->
        $meteor.requireUser()
      ]
  .state 'served-detail',
    url: '/served/:servedId'
    templateUrl: 'client/served/served-detail.view.html'
    controller: 'ServedDetailCtrl'
    resolve:
      currentUser: ['$meteor', ($meteor) ->
        $meteor.requireUser()
      ]
