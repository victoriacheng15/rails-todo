class HomeController < ApplicationController
  def index
    @home_heading = "Get Awesome with Rails Todo App"
  end

  def json
    render json: { message: "This is the JSON response from /home_json" }
  end
end
