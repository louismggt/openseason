class MissionPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def create?
    user # TODO: checker si la mission est deja prise ?
  end

  def show?
    user
    # return true, compare le user qui a postulé et le user signed
  end

  def destroy?
    record.user = user
    # return true, compare le user qui a postulé et le user signed
  end
end
