@ResetPsw = new Mongo.Collection('resetPsw')

ResetPsw.allow
  insert: (userId, resetPsw) ->
    true
  update: (userId, resetPsw, fields, modifier) ->
    true
  remove: (userId, resetPsw) ->
    true
