class Api::ArtPiecesController < ApplicationController
  before_action :authenticate_user

  def index
    @art_pieces = ArtPiece.all
    render "index.json.jbuilder"
  end

  def create
    art_piece = ArtPiece.new(
      description: params[:description],
      height: params[:height], 
      width: params[:width],
      user_id: current_user.id,
      measurement: params[:measurement],
      photo: params[:photo]
      )
    if art_piece.save
      render json: {message: 'Art saved successfully'}, status: :created
    else 
      render json: {errors: art_piece.errors.full_messages}, status: :bad_request
    end
  end

  def show 
    @art_piece = ArtPiece.find_by(id: params[:id])
    render "show.json.jbuilder"
  end

  def update
    @art_piece = ArtPiece.find_by(id: params[:id])
    @art_piece.description = params["description"] || @art_piece.description
    @art_piece.height = params["height"] || @art_piece.height
    @art_piece.width = params["width"] || @art_piece.width
    @art_piece.measurement = params["measurement"] || @art_piece.measurement
    @art_piece.photo = params["photo"] || @art_piece.photo

    if @art_piece.save
      render "show.json.jbuilder"
    else
      render json: {error: @art_piece.errors.full_messages}, status: 404
    end
  end

  def destroy
    @art_piece = ArtPiece.find_by(id: params[:id])
    @art_piece.destroy
    render json: {message: "Art deleted"}
  end

end
