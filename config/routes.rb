Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    get "/name_game" => "game_time#letter"
    get '/guessing_game' =>"game_time#game"

    get '/segment_name/:name' => 'game_time#segment_method'

    post '/game_body_params' => 'game_time#body_method'
    post '/authentication' => 'game_time#authentication_method'
   end
end
