class Photo

  #attr_accessible :scale, :x_pos, :y_pos, :z_pos, :image

  # Paperclip attachment
  #has_attached_file :image,
  #    :url => '/system/images/:hash.:extension',
  #    :hash_secret => 'doremifasolatido'

  include Mongoid::Document
  extend Mongoid::PaperclipQueue

  has_queued_attached_file :image,
        :url => '/system/images/:hash.:extension',
        :hash_secret => 'doremifasolatido',
        :styles => { :large => "1936x1936>", :thumb => "64x64>" }


  def image_path
    ActionController::Base.helpers.asset_path(image.url)
    #"/public/system/images/#{image_file_name}"
  end
end
