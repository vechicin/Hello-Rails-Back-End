class V1::GreetingsController < ApplicationController
  def index
    greeting = Greeting.find(rand(1..5))
    render json: {
      greeting: greeting.greeting
    }.to_json
  end
end
