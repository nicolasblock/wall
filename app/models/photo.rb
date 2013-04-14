class Photo < ActiveRecord::Base

  attr_accessible :scale, :x_pos, :y_pos, :z_pos, :image #nb

  # Paperclip attachment
  has_attached_file :image,
      :url => '/system/images/:hash.:extension',
      :hash_secret => 'doremifasolatido' #nb
      
  def image_path
    ActionController::Base.helpers.asset_path(image.url) #nb
    #"/public/system/images/#{image_file_name}"
  end
end
