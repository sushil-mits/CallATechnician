@Served = new Mongo.Collection('served')

Served.allow
  insert: (userId, served) ->
    userId
  update: (userId, served, fields, modifier) ->
    userId
  remove: (userId, served) ->
    userId
