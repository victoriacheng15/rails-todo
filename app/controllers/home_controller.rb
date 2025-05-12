class HomeController < ApplicationController
  def index
  end

  def json
    render json: { message: "This is the JSON response from /home_json" }
  end
end
