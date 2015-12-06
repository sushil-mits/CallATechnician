'use strict'

Meteor.publish 'resetPsw', (options, searchString) ->
  where =
    'name':
      '$regex': '.*' + (searchString or '') + '.*'
      '$options': 'i'
  Counts.publish this, 'numberOfResetPsw', ResetPsw.find(where), noReady: true
  ResetPsw.find where, options