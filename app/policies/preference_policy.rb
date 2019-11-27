class PreferencePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def create?
    puts "Je passe dans create"
    true
  end

  def show?
    true
  end

  def new?
    true
  end

end
