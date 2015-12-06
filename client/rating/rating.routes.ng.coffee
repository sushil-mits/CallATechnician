'use strict'

angular.module 'catApp'
.config ($stateProvider) ->
  $stateProvider
  .state 'rating-list',
    url: '/rating'
    templateUrl: 'client/rating/rating-list.view.html'
    controller: 'RatingListCtrl'
    resolve:
      currentUser: ['$meteor', ($meteor) ->
        $meteor.requireUser()
      ]
  .state 'rating-detail',
    url: '/rating/:ratingId'
    templateUrl: 'client/rating/rating-detail.view.html'
    controller: 'RatingDetailCtrl'
    resolve:
      currentUser: ['$meteor', ($meteor) ->
        $meteor.requireUser()
      ]
