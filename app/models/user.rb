class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
    	 :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :roles_ids
  # attr_accessible :title, :body

  has_and_belongs_to_many :roles

  def role?(r)
  	self.roles.each do |rl|
  		if rl[:name]==r
  			return true
  		end
  	end
  	return false
  end
end
