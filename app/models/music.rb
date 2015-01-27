class Music < ActiveRecord::Base
  mount_uploader :slide, SlideUploader

  validates :title, presence: true
end