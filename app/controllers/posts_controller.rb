require "net/http"
require "uri"
require "json"

class PostsController < ApplicationController
  def index
    @message = "Welcome to the Posts post!"
    url = URI.parse("https://jsonplaceholder.typicode.com/posts")
    response = Net::HTTP.get_response(url)

    if response.is_a?(Net::HTTPSuccess)
      @posts = JSON.parse(response.body)
    else
      @posts = []
      flash[:error] = "Failed to fetch posts"
    end
  end

  def json
    url = URI.parse("https://jsonplaceholder.typicode.com/posts")
    response = Net::HTTP.get_response(url)

    if response.is_a?(Net::HTTPSuccess)
      posts = JSON.parse(response.body)
      render json: posts
    else
      render json: { error: "Failed to fetch posts" }, status: :bad_gateway
    end
  end
end
