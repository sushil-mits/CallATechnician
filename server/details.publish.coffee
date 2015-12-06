'use strict'

Meteor.publish 'details', (options, searchString) ->
  where =
    'name':
      '$regex': '.*' + (searchString or '') + '.*'
      '$options': 'i'
  Counts.publish this, 'numberOfDetails', Details.find(where), noReady: true
  Details.find where, options