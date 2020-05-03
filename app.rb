require './environment'
require './models/pirate.rb'
require './models/ship.rb'


module FormsLab
  class App < Sinatra::Base

    get '/' do
      erb :index
    end

    get '/new' do
      erb :new
    end

    post '/pirates' do
      @pirates = Pirates.new(params[:pirate])

      params[:pirate][:ship].each do |details|
        Ship.new(details)
      end

      @ships = Ship.all

      erb :show
    end

  end
end
