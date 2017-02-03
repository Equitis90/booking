class CommentsController < ApplicationController
  before_filter :authorize

  def create
    Comment.create(comment_parameters)
    redirect_to placement_path(comment_parameters[:placement_id])
  end

  private

  def comment_parameters
    params.require(:comment).permit(:placement_id, :text, {images: []})
  end
end
