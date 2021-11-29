require 'sinatra'
require "sinatra/reloader" if development?


  get '/' do
    "Hello"
  end

  get '/secret' do
    "This is secret!"
  end

  get '/supersecret' do
    "This is even more secret!"
  end

  get '/notsecret' do 
    "This isn't secret at all"
  end

  get '/random-cat' do
    @name = ['Amigo', 'Misty', 'Almond'].sample
    erb(:index)
  end

  get '/cat-form' do
    erb :cat_form
  end
  
  post '/named-cat' do
    p params
    @name = params[:name]
    erb :index
  end