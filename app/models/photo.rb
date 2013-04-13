class Photo < ActiveRecord::Base
  attr_accessible :scale, :x_pos, :y_pos, :z_pos
end
