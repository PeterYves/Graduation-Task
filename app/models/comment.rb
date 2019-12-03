class Comment < ApplicationRecord
  belongs_to :course
  belongs_to :user
  validates :description,:user_id,:course_id,presence: true
end
