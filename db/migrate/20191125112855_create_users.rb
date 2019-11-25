class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :names
      t.text :email
      t.string :user_tye, default: 'learner'
      t.string :password_digest

      t.timestamps
    end
  end
end
