class Course < ApplicationRecord
  has_one_attached :clip
  has_one_attached :thumbnail
  has_many :comments, dependent: :destroy
end
