module.exports = (robot) ->
  robot.router.post '/hubot/typeform/:room', (request, response) ->
    room   = request.params.room
    data   = if request.body.payload? then JSON.parse request.body.payload else request.body
    secret = testing 123 

    robot.messageRoom room, "I have a secret: #{secret}"

    response.send 'OK'
