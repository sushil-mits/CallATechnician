@Handyman = new Mongo.Collection('handyman')

Handyman.allow
  insert: (userId, handyman) ->
    userId
  update: (userId, handyman, fields, modifier) ->
    userId
  remove: (userId, handyman) ->
    userId
