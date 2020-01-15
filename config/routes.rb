Rails.application.routes.draw do
  namespace :api do
    get '/all_games_url' => 'products#all_games_action'
    get '/cod_url' => 'products#cod_action'
    get '/forza_url' => 'products#forza_action'
    get '/doom_url' => 'products#doom_action'
    get '/smash_url' => 'products#smash_action'
    get '/party_url' => 'products#party_action'
    get '/gta_url' => 'products#gta_action'
 
  end
 
end
