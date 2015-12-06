Meteor.startup ->
  if Served.find().count() == 0
    served = [
      {
        'name': 'served 1'
      }
      {
        'name': 'served 2'
      }
    ]
    served.forEach (served) ->
      Served.insert served