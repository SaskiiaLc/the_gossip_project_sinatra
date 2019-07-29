require 'sinatra'
require 'gossip'




class ApplicationController < Sinatra::Base

    get'/' do
        erb :index, locals: {gossips: Gossip.all}
    end

    get'/gossips/new/' do
        erb :new_gossip
    end

    post '/gossips/new/' do
        Gossip.new(params['gossip_author'], params['gossip_content']).save #mon super code enregistre un gossip en fonction de params
        redirect '/'
    end

end

