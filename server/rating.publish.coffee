'use strict'

Meteor.publish 'rating', (options, searchString) ->
  where =
    'name':
      '$regex': '.*' + (searchString or '') + '.*'
      '$options': 'i'
  Counts.publish this, 'numberOfRating', Rating.find(where), noReady: true
  Rating.find where, options