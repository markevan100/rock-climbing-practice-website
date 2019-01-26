class Practice < ApplicationRecord

  validates :date, presence: true, length: { minimum: 4, maximum: 20 }
  validates :plan, presence: true, length: { minimum: 4, maximum: 400 }
  validates :author, presence: true, length: { minimum: 1, maximum: 30 }

end
