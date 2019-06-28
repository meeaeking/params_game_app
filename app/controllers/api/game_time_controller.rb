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

  def number
    the_guess = params["number"].to_i
    if the_guess == 32
      @response = "you win!"
    elsif the_guess < 32
      @response = "too low"
    elsif the_guess > 32
      @response = "too high"
    end
  end

  def segment_method
    @name = params["name"]
    render 'segment.json.jb'
  end

  def body_method
    the_guess = params["number"].to_i
    if the_guess == 32
      @response = "you win!"
    elsif the_guess < 32
      @response = "too low"
    elsif the_guess > 32
      @response = "too high"
    end
    render 'body.json.jb'
  end

  def authentication_method
    if params[:password] == 'swordfish' && params[:username] =='hugh'
      @message = "valid credentials"
    else
      @message = "invalid credentials"
    end
    render 'authentication.json.jb'
  end
end