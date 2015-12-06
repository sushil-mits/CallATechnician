@Rating = new Mongo.Collection('rating')

Rating.allow
  insert: (userId, rating) ->
    userId
  update: (userId, rating, fields, modifier) ->
    userId
  remove: (userId, rating) ->
    userId
