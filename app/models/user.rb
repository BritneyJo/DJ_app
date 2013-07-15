class User < ActiveRecord::Base
  has_secure_password
  attr_accessible :bio, :email, :location, :name, :password, :password_confirmation, :avatar_image

  validates :email, presence: true, uniqueness: true
  validates :password, confirmation: true
  has_many :music_tracks
  has_many :comments
  has_many :genres, through: :music_tracks

end
