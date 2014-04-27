class User < ActiveRecord::Base
  has_many :applications, dependent: :destroy
  has_secure_password
end
