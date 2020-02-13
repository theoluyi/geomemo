class AddImagesToLocations < ActiveRecord::Migration[6.0]
  def change
    add_column :locations, :thumbnail, :string
    add_column :locations, :background_image, :string
  end
end
