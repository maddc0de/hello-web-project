require 'sinatra/base'
require 'sinatra/reloader'

class Application < Sinatra::Base  #makes Application a subclass of Sinatra::Base class provided by Sinatra: Application inherits all methods and features from sinatra::base class
  get '/' do
    return 'Hello'
  end
  
  get '/hello' do
		return erb(:index)
  end

  post '/submit' do
    name = params[:name]
    message = params[:message]

    return "thanks #{name}, you sent this message: #{message}"
  end

  get '/names' do
    name1, name2, name3 = params[:name1], params[:name2], params[:name3]

    return "#{name1}, #{name2}, #{name3}"
  end

  post '/sort-names' do
    names = params[:names]

    names.split(",").sort!.join(",")
  end

end