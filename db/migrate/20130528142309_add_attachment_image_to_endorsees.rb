class AddAttachmentImageToEndorsees < ActiveRecord::Migration
  def self.up
    change_table :endorsees do |t|
      t.attachment :image
    end
  end

  def self.down
    drop_attached_file :endorsees, :image
  end
end
