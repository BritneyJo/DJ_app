class MusicTrack < ActiveRecord::Base
  attr_accessible :name, :release_date, :description, :track_file, :user
  has_and_belongs_to_many :genres
  belongs_to :user
  has_many :comments

end
