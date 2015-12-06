@Order = new Mongo.Collection('order')

Order.allow
  insert: (userId, order) ->
    userId
  update: (userId, order, fields, modifier) ->
    userId
  remove: (userId, order) ->
    userId
