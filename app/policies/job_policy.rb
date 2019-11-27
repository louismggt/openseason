class JobPolicy < ApplicationPolicy
  def create?
    return false
  end

  class Scope < Scope
    def resolve
      scope.all
    end
  end
end
