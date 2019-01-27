class Contact < ApplicationRecord

  validates :name, presence: true, length: { minimum: 4, maximum: 40 }

end
