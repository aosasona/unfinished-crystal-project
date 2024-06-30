require "json"

module Api
  extend self

  def serve
    get "/healthz" do
      {ok: true, message: "I am alive"}.to_json
    end
  end
end
