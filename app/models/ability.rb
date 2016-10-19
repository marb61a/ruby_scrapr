class Ability

include CanCan::Ability
  def initialize(user)
  user ||= User.new # guest user (not logged in)
    if user.admin?
      can :manage, :all
    else
      can :update, Newsscraper do |news|
      news.user == user
    end
      can :destroy, Newsscraper do |news|
      news.user == user
    end
      can :update, Comment do |comment|
      comment.user == user
    end
      can :destroy, Comment do |comment|
      comment.user == user
    end
      can :create, Newsscraper
      can :create, Comment
      can :read, :all
    end
  end
end