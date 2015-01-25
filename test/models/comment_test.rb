require 'test_helper'

class CommentTest < ActiveSupport::TestCase
  def setup
  	@comment = Comment.new(body:"Lorem Ipsum Cupcake Snowboard road.", user_id: 1, post_id: 1)
  end

  test "Comment should be valid" do
    assert @comment.valid?
  end

  test "comment should be present" do
  	@comment.body = ""
    assert_not @comment.valid?
  end

  test "user_id should be present" do
  	@comment.user_id = ""
    assert_not @comment.valid?
  end

  test "user_id should be an integer" do
  	@comment.user_id = "a"
    assert_not @comment.valid?
  end

  test "post_id should be present" do
  	@comment.post_id = ""
    assert_not @comment.valid?
  end

  test "post_id should be an integer" do
  	@comment.post_id = "a"
    assert_not @comment.valid?
  end

end
