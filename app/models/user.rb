class User < ActiveRecord::Base
  has_secure_password
  attr_accessible :bio, :email, :location, :name, :password, :password_confirmation, :avatar_image, :role

  validates :email, presence: true, uniqueness: true
  validates :password, confirmation: true
  has_many :music_tracks
  has_many :comments
  has_many :genres, through: :music_tracks

  scope :not_admin_users, lambda { where(role: "dj")}

  def role?(role)
    self.role == role
  end

end
