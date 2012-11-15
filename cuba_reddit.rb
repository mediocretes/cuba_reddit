require "cuba"
require "cuba/render"
#require "rack/protection"
#require "securerandom"
require_relative "post.rb"

#Cuba.use Rack::Session::Cookie, :secret => SecureRandom.hex(64)
#Cuba.use Rack::Protection

Cuba.define do
  run Post

  on root do
    res.redirect "/posts"
  end
end
