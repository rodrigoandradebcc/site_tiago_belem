class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :facebook
      t.string :cell_phone
      t.string :email
      t.string :location
      t.string :twitter
      t.string :youtube

      t.timestamps
    end
  end
end
