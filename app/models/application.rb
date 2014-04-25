class Application < ActiveRecord::Base
  belongs_to :user
  validates :company, :position, presence: true
end
