'use strict'

Meteor.publish 'customer', (options, searchString) ->
  where =
    'name':
      '$regex': '.*' + (searchString or '') + '.*'
      '$options': 'i'
  Counts.publish this, 'numberOfCustomer', Customer.find(where), noReady: true
  Customer.find where, options