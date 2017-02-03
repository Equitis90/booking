require 'test_helper'

class CommentTest < ActiveSupport::TestCase
  test "should create comment with acceptable parameters" do
    fixt_placement = placements(:one)
    fixt_comment = comments(:one)
    comment = Comment.new(placement_id: fixt_placement.id, text: fixt_comment.text, images: fixt_comment.images)
    assert comment.save
  end

  test "should not create comment without placement" do
    fixt_comment = comments(:one)
    comment = Comment.new(placement_id: nil, text: fixt_comment.text, images: fixt_comment.images)
    assert_not comment.save
  end

  test "should not create comment without images" do
    fixt_placement = placements(:one)
    fixt_comment = comments(:one)
    comment = Comment.new(placement_id: fixt_placement.id, text: fixt_comment.text, images: nil)
    assert_not comment.save
  end

  test "should create comment without text" do
    fixt_placement = placements(:one)
    fixt_comment = comments(:one)
    comment = Comment.new(placement_id: fixt_placement.id, text: nil, images: fixt_comment.images)
    assert comment.save
  end
end
