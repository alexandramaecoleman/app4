class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # guest user (not logged in)
    can :manage, User, id: user.id
    cannot [:create, :edit, :update, :destroy] [Product]
  end

  def initialize(user)
    user ||= admin # admin
    can [:read, :create, :update, :destroy] [Product, Comment]
  else
  	can [:create] [Comment]
  	cannot [:create, :edit, :update, :destroy] [Product]
  end

end