class User < ActiveRecord::Base
  # Include default devise modules.
  devise :database_authenticatable, :registerable,
          :recoverable, :rememberable, :trackable, :validatable,
          :confirmable, :omniauthable
  before_save -> do
    self.uid = SecureRandom.uuid
    skip_confirmation!
  end

  include DeviseTokenAuth::Concerns::User
end
