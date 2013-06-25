class CreateSchools < ActiveRecord::Migration
  def change
    create_table :schools do |t|
      t.text :content

      t.timestamps
    end
  end
end
