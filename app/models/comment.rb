class Comment < ApplicationRecord
  mount_uploaders :images, ImageUploader
  belongs_to :placement

  validates :images, :presence => true
end
