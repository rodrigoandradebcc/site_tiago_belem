class RemoveUrlFromPhotos < ActiveRecord::Migration
  def up
  	remove_column :photos, :url
  end

  def down
  end
end
