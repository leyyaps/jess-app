class AlbumPolicy < ApplicationPolicy
  def index?
    true
  end

  def create?
    user.present?
  end

  def update?
    user.present? && user == album.user

  end

  private

  def album
    record
  end

end