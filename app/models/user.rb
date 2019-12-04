class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :missions
  has_many :favorites
  has_many :work_experiences
  has_many :preferences

  has_one_attached :cv
  # has_one_attached :avatar
end
