require "test_helper"

class OrderReceiptsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @order_receipt = order_receipts(:one)
  end

  test "should get index" do
    get order_receipts_url
    assert_response :success
  end

  test "should get new" do
    get new_order_receipt_url
    assert_response :success
  end

  test "should create order_receipt" do
    assert_difference("OrderReceipt.count") do
      post order_receipts_url, params: { order_receipt: { Email_address: @order_receipt.Email_address, Gst: @order_receipt.Gst, Time: @order_receipt.Time, medical_name: @order_receipt.medical_name } }
    end

    assert_redirected_to order_receipt_url(OrderReceipt.last)
  end

  test "should show order_receipt" do
    get order_receipt_url(@order_receipt)
    assert_response :success
  end

  test "should get edit" do
    get edit_order_receipt_url(@order_receipt)
    assert_response :success
  end

  test "should update order_receipt" do
    patch order_receipt_url(@order_receipt), params: { order_receipt: { Email_address: @order_receipt.Email_address, Gst: @order_receipt.Gst, Time: @order_receipt.Time, medical_name: @order_receipt.medical_name } }
    assert_redirected_to order_receipt_url(@order_receipt)
  end

  test "should destroy order_receipt" do
    assert_difference("OrderReceipt.count", -1) do
      delete order_receipt_url(@order_receipt)
    end

    assert_redirected_to order_receipts_url
  end
end
