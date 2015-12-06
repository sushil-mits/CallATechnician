Meteor.startup ->
  if Details.find().count() == 0
    details = [
      {
        'name': 'detail 1'
      }
      {
        'name': 'detail 2'
      }
    ]
    details.forEach (detail) ->
      Details.insert detail