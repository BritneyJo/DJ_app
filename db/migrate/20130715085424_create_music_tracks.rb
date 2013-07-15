class CreateMusicTracks < ActiveRecord::Migration
  def change
    create_table :music_tracks do |t|
      t.string :name
      t.date :release_date
      t.string :track_file
      t.text :description
      t.integer :user_id

      t.timestamps
    end
  end
end
