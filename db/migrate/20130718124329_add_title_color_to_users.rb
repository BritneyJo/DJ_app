class AddTitleColorToUsers < ActiveRecord::Migration
  def change
    add_column :users, :title_color, :string
  end
end
