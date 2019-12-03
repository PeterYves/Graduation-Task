# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(name: 'Petro', email: 'petro@gmail.com', password: '123456', password_confirmation: '123456', user_type:'admin')
User.create(names: 'mucyo', email: 'mucyo@gmail.com', password: '123456', password_confirmation: '123456',user_type:'admin' )
User.create(names: 'muhire', email: 'muhire@gmail.com', password: '123456', password_confirmation: '123456')
User.create(names: 'emma', email: 'emma@gmail.com', password: '123456', password_confirmation: '123456', user_type:'admin' )
User.create(names: 'lionel', email: 'lionel@gmail.com', password: '123456', password_confirmation: '123456' )
User.create(names: 'cr7', email: 'cr7@gmail.com', password: '123456', password_confirmation: '123456' )
User.create(names: 'paul clement', email: 'Pclement@gmail.com', password: '123456', password_confirmation: '123456' )
User.create(names: 'francois bagbo', email: 'fra@gmail.com', password: '123456', password_confirmation: '123456' )
User.create(names: 'kiko casilla', email: 'kiko@gmail.com', password: '123456', password_confirmation: '123456' )
User.create(names: 'amina', email: 'amina@gmail.com', password: '123456', password_confirmation: '123456' )


Course.create(name: 'javascript', description: 'Master JavaScript With The Most Complete Course On The Market. From Beginner to Advanced.', price: 300, clip: 'to night jayc social mula.mp4',thumbnail:'Pia Pounds - Easy (Official HD Video) _ New Ugandan Music Videos _ DjZeRoPrO - YouTube (1080p).mp4')
