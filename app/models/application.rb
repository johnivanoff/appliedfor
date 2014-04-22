class Application < ActiveRecord::Base
  validates :company, :position, presence: true
end
