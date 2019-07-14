class Api::PhotosController < ApplicationController

  def index
    @photos = Photo.all
    render "index.json.jbuilder"
  end

  def show
    @photo = Photo.find_by(id: params[:id])
    render "show.json.jbuilder"
  end

  def create
    @photo = Photo.create(
      name: params[:name],
      width: params[:width],
      height: params[:height]
    )
    render "show.json.jbuilder"
  end

  def delete
    @photo = Photo.find_by(id: params[:id])
    name = @photo.name
    @photo.destroy
    render json: {message: "Photo: #{name} Deleted"}
  end
end
