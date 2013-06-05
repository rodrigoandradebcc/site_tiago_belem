class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, 
        :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :role_ids

  has_and_belongs_to_many :roles

  # Retorna se possui ou não uma rola
  def role?(r)
    self.roles.each do |rl|
      if rl[:name] == r
        return true
      end
    end
    return false
  end


end