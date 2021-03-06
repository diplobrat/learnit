class LessonPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def show?
    true  # Anyone can view a lesson
  end

  def create?
    true  # Anyone can create a lesson
  end

  def update?
    record.user == user  # Only lesson creator can update it
  end

  def destroy?
    record.user == user  # Only lesson creator can update it
  end
end
