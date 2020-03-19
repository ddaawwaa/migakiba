class SpotsController < ApplicationController
  def index
    render "spots/index"
  end

  def new
    @spot = Spot.new
    @photo = @spot.photos.build
  end
end
