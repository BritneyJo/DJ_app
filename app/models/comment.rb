class Comment < ActiveRecord::Base
  attr_accessible :author_id, :description, :published_date, :track_id
  belongs_to :user
  belongs_to :music_track
end
