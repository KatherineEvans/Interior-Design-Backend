class Api::WallsController < ApplicationController
  before_action :authenticate_user

  def index
    @walls = Wall.all
    render "index.json.jbuilder"
  end

  def create
    wall = Wall.new(
      color: params[:color],
      height: params[:height], 
      width: params[:width],
      user_id: current_user.id,
      measurement: params[:measurement],
      photo: params[:photo]
      )
    if wall.save
      render json: {message: 'Wall saved successfully'}, status: :created
    else 
      render json: {errors: wall.errors.full_messages}, status: :bad_request
    end
  end

  def show 
    @wall = Wall.find_by(id: params[:id])
    render "show.json.jbuilder"
  end

  def update
    @wall = Wall.find_by(id: params[:id])
    @wall.color = params["color"] || @wall.color
    @wall.height = params["height"] || @wall.height
    @wall.width = params["width"] || @wall.width
    @wall.measurement = params["measurement"] || @wall.measurement
    @wall.photo = params["photo"] || @wall.photo

    if @wall.save
      render "show.json.jbuilder"
    else
      render json: {error: @wall.errors.full_messages}, status: 404
    end
  end

  def destroy
    @wall = Wall.find_by(id: params[:id])
    @wall.destroy
    render json: {message: "Wall was deleted"}
  end

end
