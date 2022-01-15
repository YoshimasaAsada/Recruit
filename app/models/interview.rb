class Interview < ApplicationRecord
  has_many :favorites, dependent: :destroy
  has_many :interview_practices, dependent: :destroy
  belongs_to :review, optional: true

  def favorited_by?(user)
    favorites.where(user_id: user.id).exists?
  end

  def practiced_by?(user)
    interview_practices.where(user_id: user.id).exists?
  end
end
