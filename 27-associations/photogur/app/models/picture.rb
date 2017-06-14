class Picture < ActiveRecord::Base
  # there is a picture_id foreign key referring to you in the comments table
  has_many :comments
  # @picture.comments
  # @picture.comments <<
  # etc
end
