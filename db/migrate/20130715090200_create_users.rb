class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :location
      t.text :bio
      t.string :email
      t.string :password_digest
      t.string :avatar_image

      t.timestamps
    end
  end
end
