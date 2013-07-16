class Ability
 include CanCan::Ability

  def initialize(user)
    user ||= User.new
    if user.role? 'dj'
      can :read, :all
      can :create, Comment
      can :destroy, Comment do |c|
          (c.music_track.user.id == user.id if (c.music_track and c.music_track.user))# || c.user.id == user.id
      end
      can :manage, User do |u|
        u.id == user.id
      end
    elsif user.role? 'admin'
      can :manage, :all
    else
      can :read, :all
      can :create, User
    end
  end
end