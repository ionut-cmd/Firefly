require "test_helper"

class CommentsControllerTest < ActionDispatch::IntegrationTest
  setup do

    @users = User.new
    @users.email = "test@gmail.com"
    @users.firstname = 'test'
    @users.lastname = 'test2'
    @users.thumbnail = '/1.png'
    @users.password = '1234abcd'
    @users.password_confirmation = '1234abcd'
    assert @users.valid?
    assert @users.save
    assert sign_in @users
    @forum = @users.forums.build
    @forum.title = 'hello'
    @forum.category = 'hate crime'
    @forum.imageurl = '/img10.jpg'
    assert @forum.save 
    @comment = @forum.comments.build
    @comment.comment = "Hello"
    @comment.forum = @forum
    @comment.user = @users  
    assert @comment.save

  end

  test "should get index" do
    get comments_url
    assert_response :success
  end
'''
  test "should get new" do
    get new_comment_url
    assert_response :success
  end
'''
  test "should create comment" do
    assert_difference('Comment.count') do
      post comments_url, params: { comment: { comment: @comment.comment, forum_id: @comment.forum_id, user_id: @comment.user_id } }
    end

    assert_redirected_to comment_url(Comment.last)
  end

  test "should show comment" do
    get comment_url(@comment)
    assert_response :success
  end
'''
  test "should get edit" do
    get edit_comment_url(@comment)
    assert_response :success
  end
'''
  test "should update comment" do
    patch comment_url(@comment), params: { comment: { comment: @comment.comment, forum_id: @comment.forum_id, user_id: @comment.user_id } }
    assert_redirected_to comment_url(@comment)
  end

  test "should destroy comment" do
    assert_difference('Comment.count', -1) do
      delete comment_url(@comment)
    end

    assert_redirected_to comments_url
  end
end
