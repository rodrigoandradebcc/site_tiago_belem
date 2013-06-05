class Ability
  include CanCan::Ability

  def initialize(user)
       user ||= User.new
       if user.role?('admin')
            can :manage, :all
        elsif user.role?('visitante')
            can :manage, :all
        else
        	can :manage, :all
       end
  end
end
