class Contact < ActiveRecord::Base
  attr_accessible :cell_phone, :email, :facebook, :location, :twitter, :youtube
end
