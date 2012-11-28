class ImagesController < ApplicationController

  respond_to :json
  # GET /images
  # GET /images.json
  def index
    @images = Image.all
    render json: @images
  end

  def show
    @image = Image.find(params[:id])
    render json: @image
  end

  def create
    @image = Image.create(params[:image])
    render json: @image
  end

  def update
    @image = Image.update_attributes(params[:id])
    render json: @image
  end

  def destroy
    @image = Image.find(params[:id])
    @image.destroy
    render json: @image
  end

end
