class List < ApplicationRecord
  has_many :cards
  validates :title, presence: true,
                    length: { minimum: 5 }
end
