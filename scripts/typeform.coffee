module.exports = (robot) ->
  robot.router.post '/hubot/typeform/:room', (request, response) ->
    room   = request.params.room
    data   = if request.body.payload? then JSON.parse request.body.payload else request.body
    console.log data

    robot.messageRoom room, "Someone responded to 'How Can I get Involved' \n"

    response.send 'OK'
