class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  CATEGORY = ["chinese", "italian", "japanese", "french", "belgian"]

  validates :name, :address, :category, presence: true
  validates :category, inclusion: { in: CATEGORY }
end

  # belongs_to :restaurant

  # validates :content, :rating, presence: true
  # validates_inclusion_of :rating, :in => (0..5).to_a
