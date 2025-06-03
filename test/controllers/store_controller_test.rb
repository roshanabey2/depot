require "test_helper"

class StoreControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get store_index_url
    assert_response :success
    assert_select "nav a", minimum: 4
    assert_select "main ul li", 3
    assert_select "h2", "Programming Ruby 1.9"
    assert_select "div#description", /\A.+\z/
    assert_select "div.mt-3", /£[,\d]+\.\d\d/
  end
end
