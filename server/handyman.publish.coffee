'use strict'

Meteor.publish 'handyman', (options, searchString) ->
  where =
    'name':
      '$regex': '.*' + (searchString or '') + '.*'
      '$options': 'i'
  Counts.publish this, 'numberOfHandyman', Handyman.find(where), noReady: true
  Handyman.find where, options