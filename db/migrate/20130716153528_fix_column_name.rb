class FixColumnName < ActiveRecord::Migration
  def change
    change_table :comments do |t|
      t.rename :track_id, :music_track_id
      t.rename :author_id, :user_id
    end
  end
end
