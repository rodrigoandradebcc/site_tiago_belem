class CreateTiagoBelems < ActiveRecord::Migration
  def change
    create_table :tiago_belems do |t|
      t.text :content

      t.timestamps
    end
  end
end
