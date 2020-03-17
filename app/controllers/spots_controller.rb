class SpotsController < ApplicationController
  def index
    render "spots/index"
  end

  def new
    @spot = Spot.new
  end
end
