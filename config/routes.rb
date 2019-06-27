Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    get "/name_game" => "game_time#letter"
    get '/guessing_game' =>"game_time#game"

    get '/segment_name/:name' => 'game_time#segment_method'
   end
end
