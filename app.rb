require './environment'

module FormsLab
  class App < Sinatra::Base

    get '/new' do
      erb :'pirates/new'
    end

    get '/' do
      erb :root
    end

    post '/pirates' do
      @pirate = params[:pirate]
      @ships = params[:pirate][:ships]
      puts 'pirate: ' + @pirate.inspect
      puts 'ships: ' + @ships.inspect
      erb :'pirates/show'
    end

  end
end
