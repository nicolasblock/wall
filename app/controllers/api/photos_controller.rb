class Api::PhotosController < PhotosController
  
  respond_to :json
  
  
  def index
    @photos = Photo.all
    respond_with(@photos, :methods => ['image_path'], :only => [:x_pos, :y_pos, :z_pos, :scale])
  end

  def create
    @photo = Photo.create(params[:photo])
    respond_with(@photo, :location => nil, :methods => ['image_path'], :only => [:x_pos, :y_pos, :z_pos, :scale])
  end
end
