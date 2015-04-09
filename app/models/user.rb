class User < ActiveRecord::Base
  # Include default devise modules.
  devise :database_authenticatable, :registerable,
          :recoverable, :rememberable, :trackable, :validatable,
          :confirmable
  before_save -> do
    self.uid = SecureRandom.uuid
    skip_confirmation!
  end
  validates :email, :presence => true
  validates :name, :presence => true
  validates :phone, :presence => true
  validates :password, :presence => true
  validates :password_confirmation, :presence => true

end
