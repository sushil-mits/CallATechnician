@Customer = new Mongo.Collection('customer')

Customer.allow
  insert: (userId, customer) ->
    userId
  update: (userId, customer, fields, modifier) ->
    userId
  remove: (userId, customer) ->
    userId
