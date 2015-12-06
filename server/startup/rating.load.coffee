Meteor.startup ->
  if Rating.find().count() == 0
    rating = [
      {
        'name': 'rating 1'
      }
      {
        'name': 'rating 2'
      }
    ]
    rating.forEach (rating) ->
      Rating.insert rating