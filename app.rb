require "sinatra/base"

class App < Sinatra::Base
  get "/newteam" do
    erb :newteam
  end

  post "/team" do
    @name = params[:name]
    @coach = params[:coach]
    @pg = params[:pg]
    @pf = params[:pf]
    @sf = params[:sf]
    @sg = params[:sg]
    @c = params[:c]
    erb :team
  end

  get "/team" do
    erb :team
  end
end
