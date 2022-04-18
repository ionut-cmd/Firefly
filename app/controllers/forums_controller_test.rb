require "test_helper"

class ForumsControllerTest < ActionDispatch::IntegrationTest
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
    @forum.content = 'abcd'
    @forum.category = 'hate crime'
    @forum.imageurl = '/img10.jpg'
    
    assert @forum.save    
  end
  '''
  test "should get index" do
    get forums_url
    assert_response :success
  end
  '''
  test "should get new" do
    get new_forum_url
    assert_response :success
  end

  test "should create forum" do
    assert_difference('Forum.count') do
      post forums_url, params: { forum: { content: @forum.content, imageurl: @forum.imageurl, title: @forum.title, category: @forum.category } }
    end

    assert_redirected_to forum_url(Forum.last)
  end

  test "should show forum" do
    get forum_url(@forum)
    assert_response :success
  end

  test "should get edit" do
    assert sign_in @users
    get edit_forum_url(@forum)
    assert_response :success
  end

  test "should update forum" do
    patch forum_url(@forum), params: { forum: { content: @forum.content, imageurl: @forum.imageurl, title: @forum.title } }
    assert_redirected_to forum_url(@forum)
  end

  test "should destroy forum" do
    assert_difference('Forum.count', -1) do
      delete forum_url(@forum)
    end

    assert_redirected_to forums_url
  end
end
