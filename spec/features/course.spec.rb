require 'rails_helper'

RSpec.feature "Course Selling function", type: :feature do
  background do
    User.create!(names:'peter yves', email: 'peter@gmail.Com', user_type: 'admin', password: '123456') 
    Course.create(name: 'html5', description: 'it is a good course',price:'200')
  end
  scenario "Test Course list" do
    Course.create(name: 'jquerry', description: 'it is a good course',price:'200')
    Course.create(name: 'javascript', description: 'it is a good course to web designers',price:'200')
    visit courses_path
    # save_and_open_page
  end

  scenario "Test Course creation" do
    Course.create(name: 'jquerry3', description: 'it is a good course',price:'200')
    Course.create(name: 'javascript2', description: 'it is a good course to web designers',price:'200')  
  end

  scenario "Test Course details" do
    @course=Course.create(name: 'jquerry4', description: 'it is a good course',price:'200')
    @course.name
    @course.description
    @course.price
  end
  scenario "Test Course updating" do
    @course1=Course.create(name: 'jquerry4', description: 'it is a good course',price:'200')
    @course1.name='typescript'
    @course1.save
  end

  scenario "Test Course Deletion" do
    @course1=Course.create(name: 'css', description: 'it is a good course for creating design',price:'200')
    @course2=Course.create(name: 'java', description: 'it is a good course for backend',price:'100')
    @course1.destroy
  end
end