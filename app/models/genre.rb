class Genre < ActiveRecord::Base
  attr_accessible :name
  has_and_belongs_to_many :music_tracks
  has_many :users, through: :music_tracks
  validates :name, presence: true, uniqueness: true
end
