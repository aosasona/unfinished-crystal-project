require "json"

class User
  include JSON::Serializable

  property username : String, password : String
end
