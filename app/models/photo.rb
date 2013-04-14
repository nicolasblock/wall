class Photo

  include Mongoid::Document
  extend Mongoid::PaperclipQueue

  field :scale, type: Float
  field :x_pos, type: Integer
  field :y_pos, type: Integer
  field :z_pos, type: Integer

  has_queued_attached_file :image,
        :url => '/system/images/:hash.:extension',
        :hash_secret => 'doremifasolatido',
        :styles => { :large => "1936x1936>", :thumb => "64x64>" }

  def image_path
    ActionController::Base.helpers.asset_path(image.url)
  end
end
