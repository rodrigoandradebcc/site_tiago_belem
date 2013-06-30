class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :legend
      t.string :image
      t.string :url

      t.timestamps
    end
  end
end
