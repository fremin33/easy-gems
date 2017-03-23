class ArticlePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope
    end
  end

  def create?
    return true
  end

  def edit?
    record.user == user
  end

  def update?
    edit?
  end



  def destroy?
    edit?
  end
end
