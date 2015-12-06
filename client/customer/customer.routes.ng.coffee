'use strict'

angular.module 'catApp'
.config ($stateProvider) ->
  $stateProvider
  .state 'customer-list',
    url: '/customer'
    templateUrl: 'client/customer/customer-list.view.html'
    controller: 'CustomerListCtrl'
    resolve:
      currentUser: ['$meteor', ($meteor) ->
        $meteor.requireUser()
      ]
  .state 'customer-detail',
    url: '/customer/:customerId'
    templateUrl: 'client/customer/customer-detail.view.html'
    controller: 'CustomerDetailCtrl'
    resolve:
      currentUser: ['$meteor', ($meteor) ->
        $meteor.requireUser()
      ]
