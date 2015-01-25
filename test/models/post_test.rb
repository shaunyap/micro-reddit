require 'test_helper'

class PostTest < ActiveSupport::TestCase
  def setup
  	@post = Post.new(title:"example", body:"Lorem Ipsum Cupcake Snowboard road.", user_id: 1)
  end

  test "post should be valid" do
    assert @post.valid?
  end

  test "title should be present" do
  	@post.title = ""
    assert_not @post.valid?
  end

  test "user_id should be present" do
  	@post.user_id = ""
    assert_not @post.valid?
  end

  test "user_id should be an integer" do
  	@post.user_id = "a"
    assert_not @post.valid?
  end

  test "title should not be too long" do
  	@post.title = "a" * 141
  	assert_not @post.valid?
  end
end
