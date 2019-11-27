class Course < ApplicationRecord
  has_one_attached :clip
  has_one_attached :thumbnail
  has_many :comments, dependent: :destroy

  def price_in_cents
    (self.price * 100).to_i
  end
end
