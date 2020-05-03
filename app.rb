require './environment'



module FormsLab
  class App < Sinatra::Base

    get '/' do
      erb :'pirates/index'
    end

    get '/new' do
      erb :'pirates/new'
    end

    post '/pirates' do
        params[:pirate][:ships].each do |ship_data|
          Ship.new(ship_data)
        end

        @pirate = Pirate.new(params[:pirate])

        @ships = Ship.all

        erb :'pirates/show'
      end
  end
end
