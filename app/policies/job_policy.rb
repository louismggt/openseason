class JobPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all.order(created_at: :desc)
    end
  end

  def create?
    return false
  end

  # def index?
  #   return true
  # end
end
