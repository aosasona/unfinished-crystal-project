require "../../models/user.cr"

class UserController
  def initialize(@db : SQLite3::Connection)
  end

  def create(ctx : HTTP::Server::Context)
  end
end
