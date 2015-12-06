'use strict'

angular.module 'catApp'
.config ($stateProvider) ->
  $stateProvider
  .state 'details-list',
    url: '/details'
    templateUrl: 'client/details/details-list.view.html'
    controller: 'DetailsListCtrl'
    resolve:
      currentUser: ['$meteor', ($meteor) ->
        $meteor.requireUser()
      ]
  .state 'detail-detail',
    url: '/details/:detailId'
    templateUrl: 'client/details/detail-detail.view.html'
    controller: 'DetailDetailCtrl'
    resolve:
      currentUser: ['$meteor', ($meteor) ->
        $meteor.requireUser()
      ]
