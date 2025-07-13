require "test_helper"

class LineItemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @line_item = line_items(:one)
  end

  test "should get index" do
    get line_items_url
    assert_response :success
  end

  test "should get new" do
    get new_line_item_url
    assert_response :success
  end

  test "should create new line_item" do
    assert_difference("LineItem.count") do
      post line_items_url,
        params: { product_id: products(:ruby).id }
    end

  cart = Cart.last
  assert_equal 1, cart.line_items.count
  end

  test "should show line_item" do
    get line_item_url(@line_item)
    assert_response :success
  end

test "should create multiple line_items in a single cart" do
  assert_difference("LineItem.count", 2) do
    post line_items_url, params: { product_id: products(:ruby).id }
    post line_items_url, params: { product_id: products(:two).id }
  end

  cart = Cart.last
  assert_equal 2, cart.line_items.count
end

  test "should show dupliciate line items in a single cart as an increment in quantity" do
    assert_difference("LineItem.count", 1) do
      post line_items_url, params: { product_id: products(:ruby).id }
      post line_items_url, params: { product_id: products(:ruby).id }
    end

    cart = Cart.last
    assert_equal 1, cart.line_items.count
    assert_equal 2, cart.line_items.first.quantity
  end



  test "should get edit" do
    get edit_line_item_url(@line_item)
    assert_response :success
  end

  test "should update line_item" do
    patch line_item_url(@line_item),
    params: { line_item: { product_id: @line_item.product_id } }
    assert_redirected_to line_item_url(@line_item)
  end

  test "should destroy line_item" do
    assert_difference("LineItem.count", -1) do
      delete line_item_url(@line_item)
    end

    assert_redirected_to line_items_url
  end
end
