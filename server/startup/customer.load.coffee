Meteor.startup ->
  if Customer.find().count() == 0
    customer = [
      {
        'name': 'customer 1'
      }
      {
        'name': 'customer 2'
      }
    ]
    customer.forEach (customer) ->
      Customer.insert customer