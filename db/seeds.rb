def create_learner(email)
    User.create!(
      names: "learner",
      email:  email,
      password: "123456"
    )
  end 
  1...17.times do |i|
    create_learner("learner_#{i}@gmail.com")
  end

  def create_admin(email)
    User.create!(
      names: "admin",
      user_type: "admin",
      email:  email,
      password: "123456"
    )
  end
  1...3.times do |i|
    create_admin("admin_#{i}@gmail.com")
  end