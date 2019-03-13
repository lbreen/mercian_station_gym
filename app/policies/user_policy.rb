class UserPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def show?
    user.admin?
  end

  def update?
    user.admin?
  end
end
