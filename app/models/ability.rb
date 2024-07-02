class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new

    if user.has_role?(:teacher)
      can :manage, Student
      can :read, Teacher
    elsif user.has_role?(:student)
      can :read, Student, id: user.id
      cannot :manage, Teacher
    end
  end
end



