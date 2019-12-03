require 'rails_helper'

RSpec.feature "Course Selling function", type: :feature do
  background do
    User.create!(names:'peter yves', email: 'peter@gmail.Com', user_type: 'admin', password: '123456',password_confirmation:'123456') 
    visit root_path
  end
  scenario "Test user list" do
    User.create(names: 'Kalisa Emmy', email: 'kalisa@gmail.com',user_type:'learner',password_confirmation:'123456')
    User.create(names: 'Rita', email: 'rita@gmail.com',user_type:'learner',password_confirmation:'123456')
    visit users_path
  end

  scenario "Test User creation" do
    User.create(names: 'Timo Emmy', email: 'timo@gmail.com',user_type:'admin',password_confirmation:'123456')
    User.create(names: 'Rino', email: 'rino@gmail.com',user_type:'learner',password_confirmation:'123456')
  end

  scenario "Test User details" do
    @user=User.create(names: 'Kalisa Emmy', email: 'kalisa@gmail.com',user_type:'learner',password_confirmation:'123456')
    @user.names
    @user.email
    @user.user_type
  end
  scenario "Test User updating" do
    @user1=User.create(names: 'Kalisa Emmy', email: 'kalisa@gmail.com',user_type:'learner',password_confirmation:'123456')
    @user1.names='Mucyo anther'
    @user1.email='mucyo@gmail.com'
    @user1.save
  end

  scenario "Test User Deletion" do
    @user=User.create(names: 'Timo werner', email: 'timow@gmail.com',user_type:'admin',password_confirmation:'123456')
    @user2=User.create(names: 'theo', email: 'theo@gmail.com',user_type:'learner',password_confirmation:'123456')
    @user.destroy
  end
end