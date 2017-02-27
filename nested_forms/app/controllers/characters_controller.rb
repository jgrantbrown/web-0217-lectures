class CharactersController < ApplicationController
  get '/' do
    "Hello World"
  end

  get '/characters/new' do
    erb(:'characters/new')
  end

  post '/characters' do
    @character = Character.create(params[:character])
    redirect  "/characters/#{@character.id}"
  end

  get '/characters' do
    erb (:'characters/index')
  end

  get '/characters/:id' do
    @character = Character.find(params[:id])
    erb (:'characters/show')
  end



end
