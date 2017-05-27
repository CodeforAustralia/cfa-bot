module.exports = (robot) ->

   yaml = require 'js-yaml'
   fs = require 'fs'
   path = require 'path'

   doc = yaml.safeLoad(fs.readFileSync(path.resolve('resources/agencies.yml'), 'utf8'));

   robot.hear /ACMI/i, (res) ->
     org = doc["ACMI"]
     res.send "*ACMI* \n" + ":classical_building: " + org.name + "\n" + org.website + "\n" + ":flag-au: Minister: " + org.minister.name + "\n" + org.minister.website
   robot.hear /OAAV/i, (res) ->
     org = doc["OAAV"]
     res.send "*OAAV* \n" + ":classical_building: " + org.name + "\n" + org.website + "\n" + ":flag-au: Minister: " + org.minister.name + "\n" + org.minister.website
