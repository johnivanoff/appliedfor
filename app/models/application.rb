class Application < ActiveRecord::Base
  belongs_to :user
  has_many   :notes, dependent: :destroy
  validates  :company, :position, presence: true
end
