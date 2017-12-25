require 'test_helper'

class MainPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get main_pages_index_url
    assert_response :success
  end

  test "should get about" do
    get main_pages_about_url
    assert_response :success
  end

  test "should get terms" do
    get main_pages_terms_url
    assert_response :success
  end

end
