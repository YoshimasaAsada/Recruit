class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :gakuchikas, dependent: :destroy
  has_many :about_myselves, dependent: :destroy
  has_many :favorites, dependent: :destroy
  has_many :schedules, dependent: :destroy
  has_many :reviews, through: :schedules
  has_many :interview_practices, dependent: :destroy

end
