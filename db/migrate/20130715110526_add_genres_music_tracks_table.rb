class AddGenresMusicTracksTable < ActiveRecord::Migration
  def change
    create_table :genres_music_tracks, :id => false do |t|
      t.integer :genre_id
      t.integer :music_track_id
    end
  end
end
