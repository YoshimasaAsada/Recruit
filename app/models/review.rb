class Review < ApplicationRecord
  belongs_to :schedule
  has_many :interviews
  enum genre: { "集団面接": 0, "個人面接": 1, "グループディスカッション": 2 }
end
