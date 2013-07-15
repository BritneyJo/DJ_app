class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.date :published_date
      t.text :description
      t.integer :author_id
      t.integer :track_id

      t.timestamps
    end
  end
end
