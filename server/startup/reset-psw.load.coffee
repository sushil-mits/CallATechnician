Meteor.startup ->
  if ResetPsw.find().count() == 0
    resetPsw = [
      {
        'name': 'resetPsw 1'
      }
      {
        'name': 'resetPsw 2'
      }
    ]
    resetPsw.forEach (resetPsw) ->
      ResetPsw.insert resetPsw