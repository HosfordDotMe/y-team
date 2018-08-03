require 'test_helper'

class PlaceCommentsControllerTest < ActionDispatch::IntegrationTest
  test "should get Index" do
    get place_comments_Index_url
    assert_response :success
  end

end
