class Room < ApplicationRecord
  validates :name, :introduction, :price, :address, :room_image, presence: true
  mount_uploader :image, ImageUploader
end
