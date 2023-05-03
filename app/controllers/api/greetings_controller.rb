class Api::GreetingsController < ApplicationController
  def index
    @greetings = Greeting.all
    render json: @greetings
  end

  def random
    @greetings = Greeting.all
    random = @greetings.sample

    render json: random
  end
end
