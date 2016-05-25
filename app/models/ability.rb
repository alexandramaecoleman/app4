class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # guest user (not logged in)
    can :manage, User, id: user.id
  end

  def initialize(user)
    user ||= admin # admin
    can [:update, :destroy] [Product, Comment]
  end

end