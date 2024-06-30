require "kemal"
require "db"
require "sqlite3"

require "./api/api.cr"

Kemal.config do |config|
  config.port = 3000
end

db = DB.connect "sqlite3::///../data.db"

router = Api::Router.new db
router.serve

Kemal.run
