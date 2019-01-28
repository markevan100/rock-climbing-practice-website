class Climber < ApplicationRecord

  validates :name, presence: true, length: { minimum: 3, maximum: 40 }

end
