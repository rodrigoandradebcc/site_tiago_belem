class CreateRealizations < ActiveRecord::Migration
  def change
    create_table :realizations do |t|
      t.string :link

      t.timestamps
    end
  end
end
