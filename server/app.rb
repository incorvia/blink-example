require 'sinatra/base'
require 'json'

class MyApp < Sinatra::Application
  get '/' do
    json = {}
    50.times { |x| json["todo-#{x}"] = "Do this thing: #{x}" }
    json.to_json
  end
end
