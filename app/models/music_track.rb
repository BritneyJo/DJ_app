class MusicTrack < ActiveRecord::Base
  attr_accessible :name, :release_date, :description, :track_file, :user, :user_id, :genre_ids
  has_and_belongs_to_many :genres
  belongs_to :user
  has_many :comments

  validates :name, presence: true, uniqueness: true
  validates :release_date, presence: :true
  validates :track_file, presence: :true

end
