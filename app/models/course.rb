class Course < ApplicationRecord
  has_one_attached :clip
  has_one_attached :thumbnail
  has_many :comments, dependent: :destroy
  belongs_to :user
  paginates_per 3

  def price_in_cents
    (self.price * 100).to_i
  end

  validates :name,    length: { in: 1..140 } 
  validates :name,:description,:clip,:thumbnail,:price,presence: true

end
