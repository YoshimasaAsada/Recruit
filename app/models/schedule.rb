class Schedule < ApplicationRecord
  belongs_to :user
  has_one :review
  enum genre: { "面接": 0, "説明会": 1, "その他": 2 }
end
