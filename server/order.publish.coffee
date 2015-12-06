'use strict'

Meteor.publish 'order', (options, searchString) ->
  where =
    'name':
      '$regex': '.*' + (searchString or '') + '.*'
      '$options': 'i'
  Counts.publish this, 'numberOfOrder', Order.find(where), noReady: true
  Order.find where, options