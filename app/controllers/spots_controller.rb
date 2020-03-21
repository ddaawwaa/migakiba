class SpotsController < ApplicationController
  def index
    render "spots/index"
  end

  def new
    @spot = Spot.new
    @photo = @spot.photos.build
  end

  def create
    @spot = Spot.new(spots_params)
    binding.pry
    if @spot.save
      redirect_to new_spot_path
    else
      render :new
    end
  end

  private
  def spots_params
    params.require(:spot).permit(
      :name,
      :address,
      :open_time,
      :close_time,
      :homepage,
      :faucet_num,
      :towel,
      :avairable_user,
      :description,
      photos_attributes: [:photo, :id, :_destroy]
    ).merge(user_id: current_user.id)
  end
end
