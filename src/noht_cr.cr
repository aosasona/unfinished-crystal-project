require "kemal"
require "./api/api.cr"

Kemal.config do |config|
  config.port = 3000
end

Api.serve

Kemal.run
