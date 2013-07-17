class User < ActiveRecord::Base
  has_secure_password
  attr_accessible :bio, :email, :location, :name, :password, :password_confirmation, :avatar_image, :role

  validates :email, presence: true, uniqueness: true
  validates :password, confirmation: true, :length => { :in => 5..255 }, if: :password_given?

  has_many :music_tracks
  has_many :comments
  has_many :genres, through: :music_tracks

  mount_uploader :avatar_image, AvatarImageUploader

  scope :not_admin_users, lambda { where(role: "dj")}

  def role?(role)
    self.role == role
  end


  private
  def password_given?
    !!(password || password_confirmation)
  end


end
