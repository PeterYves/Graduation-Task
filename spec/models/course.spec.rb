require 'rails_helper'

RSpec.describe Course, type: :model do

  scenario "Validation does not pass if the name is empty" do
    course = Course.new(name: '', description: 'javascript is going further',price:300)
    expect(course).not_to be_valid
  end

  scenario "Validation does not pass if description is empty" do
    course = Course.new(name: 'java', description: '',price:400)
    expect(course).not_to be_valid
  end

  scenario "validation does not pass if name and description are empty" do
    course = Course.new(name: '', description: '')
    expect(course).not_to be_valid
  end
  scenario "test if search works" do
    
    Course.all.where('name LIKE ?')
  end

end