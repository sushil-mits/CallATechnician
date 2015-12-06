Meteor.startup ->
  if Handyman.find().count() == 0
    handyman = [
      {
        'name': 'handyman 1'
      }
      {
        'name': 'handyman 2'
      }
    ]
    handyman.forEach (handyman) ->
      Handyman.insert handyman