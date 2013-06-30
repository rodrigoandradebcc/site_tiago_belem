class Photo < ActiveRecord::Base
  attr_accessible :image, :legend, :album_id

  mount_uploader :image, ImageUploader

  belongs_to :album
end
