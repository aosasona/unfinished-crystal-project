require "json"
require "sqlite3"

require "./controllers/users.cr"

module Api
  class Router
    def initialize(@db : SQLite3::Connection)
    end

    def serve
      get "/healthz" do
        {ok: true, message: "I am alive"}.to_json
      end

      ## Users
      user_controller = UserController.new(@db)

      post "/users" do |ctx|
        user_controller.create(ctx)
      end

    end
  end
end
