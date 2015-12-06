'use strict'

angular.module 'catApp'
.config ($stateProvider) ->
  $stateProvider
  .state 'order-list',
    url: '/order'
    templateUrl: 'client/order/order-list.view.html'
    controller: 'OrderListCtrl'
    resolve:
      currentUser: ['$meteor', ($meteor) ->
        $meteor.requireUser()
      ]
  .state 'order-detail',
    url: '/order/:orderId'
    templateUrl: 'client/order/order-detail.view.html'
    controller: 'OrderDetailCtrl'
    resolve:
      currentUser: ['$meteor', ($meteor) ->
        $meteor.requireUser()
      ]
