class Application < ActiveRecord::Base
  validates :company, presence: true
end
