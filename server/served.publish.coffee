'use strict'

Meteor.publish 'served', (options, searchString) ->
  where =
    'name':
      '$regex': '.*' + (searchString or '') + '.*'
      '$options': 'i'
  Counts.publish this, 'numberOfServed', Served.find(where), noReady: true
  Served.find where, options