class MissionPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def create?
    return true
  end

  def show?
    true
    # return true, compare le user qui a postulé et le user signed
  end

end
