require 'test_helper'

class EventPageControllerTest < ActionDispatch::IntegrationTest
  test "should get forum" do
    get event_page_forum_url
    assert_response :success
  end

end
