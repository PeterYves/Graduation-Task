class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :courses, dependent: :destroy
  has_many :comments, dependent: :destroy
  validates :names,:user_type,presence: true
  def self.admins
    @users = User.all
    @admins = 0
    @users.each do |user|
      if user.user_type == "admin"
        @admins += 1
      end
    end
    return @admins
  end
end


