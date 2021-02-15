require "open-uri"

class FlatsController < ApplicationController
  def index
    url = "https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json"
    @flats = JSON.parse(open(url).read)
  end

  def show
    url = "https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json"
    @flats = JSON.parse(open(url).read)
    @flat = @flats.find do |flat|
      # true / false
      # params[:id] is coming from the URL
      flat['id'] == params[:id].to_i
    end
  end
end
