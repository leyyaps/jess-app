class Album < ApplicationRecord
  mount_uploader :image, ImageUploader
  has_many :tracks

  def name
    artist
  end
end
