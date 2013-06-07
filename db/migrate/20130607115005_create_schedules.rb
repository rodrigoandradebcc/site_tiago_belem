class CreateSchedules < ActiveRecord::Migration
  def change
    create_table :schedules do |t|
      t.string :month
      t.text :specification

      t.timestamps
    end
  end
end
