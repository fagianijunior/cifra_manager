class Music < ActiveRecord::Base
  validates :title, presence: true
end
