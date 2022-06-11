class Room < ApplicationRecord
  validates :name, :introduction, :price, :address, presence: true
  mount_uploader :image, ImageUploader
  
  belongs_to :user
end
