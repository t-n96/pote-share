class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # validates :name, presence: true
  # validates :profile, length: { maximum: 200 }
  has_one_attached :avatar, dependent: :destroy
  has_many :rooms, dependent: :destroy
end
