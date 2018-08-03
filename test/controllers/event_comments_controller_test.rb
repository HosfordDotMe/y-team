require 'test_helper'

class EventCommentsControllerTest < ActionDispatch::IntegrationTest
  test "should get Index" do
    get event_comments_Index_url
    assert_response :success
  end

  test "should get New" do
    get event_comments_New_url
    assert_response :success
  end

  test "should get Show" do
    get event_comments_Show_url
    assert_response :success
  end

end
