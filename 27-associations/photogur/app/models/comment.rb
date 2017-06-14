class Comment < ApplicationRecord
  # there is a picture_id foreign key in your database table
  belongs_to :picture
  # @comment.picture
  # @comment.picture= @picture
  # @comment.build_picture
  # @comment.create_picture
  has_many :tags, through: :picture
end
