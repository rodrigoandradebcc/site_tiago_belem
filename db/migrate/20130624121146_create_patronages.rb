class CreatePatronages < ActiveRecord::Migration
  def change
    create_table :patronages do |t|
      t.string :link

      t.timestamps
    end
  end
end
