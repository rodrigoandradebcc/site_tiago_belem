class CreateSchedules < ActiveRecord::Migration
  def change
    create_table :schedules do |t|
      t.string :month
      t.string :specification

      t.timestamps
    end
  end
end
