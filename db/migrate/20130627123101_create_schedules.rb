class CreateSchedules < ActiveRecord::Migration
  def change
    create_table :schedules do |t|
      t.date :date_event
      t.text :specification_event

      t.timestamps
    end
  end
end
