class CreateTiagoEndorsees < ActiveRecord::Migration
  def change
    create_table :tiago_endorsees do |t|
      t.string :link

      t.timestamps
    end
  end
end
