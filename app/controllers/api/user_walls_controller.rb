class Api::UserWallsController < ApplicationController
  before_action :authenticate_user

  def create
    user_wall = UserWall.new(
      art_id: params[:art_id],
      wall_id: params[:wall_id], 
      )
    if user_wall.save
      render json: {message: 'Saved successfully'}, status: :created
    else 
      render json: {errors: user_wall.errors.full_messages}, status: :bad_request
    end
  end

end
