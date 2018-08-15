class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :name, :address, :category, presence: true
  validates :category, exclusion: { in: %w(neptunian),
    message: "%{value} is reserved." }

end
