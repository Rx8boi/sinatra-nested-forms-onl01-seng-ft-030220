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
      @pirate = Pirates.new(params[:pirate][:name], params[:pirate][:height], params[:pirate][:weight])

      params[:pirate][:ship].each do |details|
        Ship.new(details[:name], details[:type], details[:booty_attributes])
      end

      @ships = Ship.all

      erb :'pirates/show'
    end

  end
end
