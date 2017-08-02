class ContactPolicy < ApplicationPolicy
  def index?
    true
  end

  def new?
    true
  end
end