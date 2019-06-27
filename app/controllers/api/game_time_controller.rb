class Api::GameTimeController < ApplicationController
  def letter
    name = params["name"]
    first_character = params["name"][0]
    if first_character == "a"
      @message = "The first letter of your name is a"
    else
      @message = "Your name is #{name}"
    end

    render 'name.json.jb'
  end

  # def number
  #   if param["number"] == rand(1..100)
  # end
end
