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

  get '/cat' do
    "<div style='border: 3px dashed red'> <img  src = 'https://i.imgur.com/jFaSxym.png'/> </div>"
  end