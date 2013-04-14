class PhotosController < ApplicationController
  
  respond_to :json
  
  
  def index

  end

  def create
    @photo = Photo.create(params[:photo])
    respond_with(@photo, :methods => ['image_path'], :only => [:x_pos, :y_pos, :z_pos, :scale])
  end
end
