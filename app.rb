require 'sinatra/base'

class Application < Sinatra::Base  #makes application a subclass of class provided by Sinatra: application inherits all methods and features from sinatra::base class
  get '/hello' do
		name = params[:name]
		return "Hello #{name}"
  end

  post '/submit' do
    name = params[:name]
    message = params[:message]

    return "thanks #{name}, you sent this message: #{message}"
  end
end