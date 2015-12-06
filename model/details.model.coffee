@Details = new Mongo.Collection('details')

Details.allow
  insert: (userId, detail) ->
    userId
  update: (userId, detail, fields, modifier) ->
    userId
  remove: (userId, detail) ->
    userId
