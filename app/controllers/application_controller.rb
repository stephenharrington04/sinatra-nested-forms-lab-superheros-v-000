require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :super_hero
    end

    post '/teams' do
      @team = Team.new(params[:team_name], params[:team_motto])

      params[:team][:heroes].each do |hero|
        Superhero.new(hero)
      end

      @heroes = Superhero.all
      
      erb :team
    end


end
