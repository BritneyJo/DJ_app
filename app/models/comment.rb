class Comment < ActiveRecord::Base
  attr_accessible :user_id, :description, :published_date, :music_track_id
  belongs_to :user
  belongs_to :music_track
end
