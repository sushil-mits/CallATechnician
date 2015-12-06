Meteor.startup ->
  if Order.find().count() == 0
    order = [
      {
        'name': 'order 1'
      }
      {
        'name': 'order 2'
      }
    ]
    order.forEach (order) ->
      Order.insert order