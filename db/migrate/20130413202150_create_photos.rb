class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.integer :x_pos
      t.integer :y_pos
      t.integer :z_pos
      t.float :scale

      t.timestamps
    end
  end
end
