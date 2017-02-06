class Comment < ApplicationRecord
  mount_uploaders :images, ImageUploader
  belongs_to :placement

  validates_presence_of :images
end
