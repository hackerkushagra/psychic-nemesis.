require 'test_helper'

class PostTest < ActiveSupport::TestCase
  test "the truth" do
    assert true
  end
	test "product attributes must not be empty" do
	post = Post.new
	assert post.invalid?
	assert post.errors[:title].any?
	assert post.errors[:description].any?
	#assert post.errors[:price].any?
	assert post.errors[:image_url].any?
    end

end
