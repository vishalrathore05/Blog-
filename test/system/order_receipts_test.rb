require "application_system_test_case"

class OrderReceiptsTest < ApplicationSystemTestCase
  setup do
    @order_receipt = order_receipts(:one)
  end

  test "visiting the index" do
    visit order_receipts_url
    assert_selector "h1", text: "Order receipts"
  end

  test "should create order receipt" do
    visit order_receipts_url
    click_on "New order receipt"

    fill_in "Email address", with: @order_receipt.Email_address
    fill_in "Gst", with: @order_receipt.Gst
    fill_in "Time", with: @order_receipt.Time
    fill_in "Medical name", with: @order_receipt.medical_name
    click_on "Create Order receipt"

    assert_text "Order receipt was successfully created"
    click_on "Back"
  end

  test "should update Order receipt" do
    visit order_receipt_url(@order_receipt)
    click_on "Edit this order receipt", match: :first

    fill_in "Email address", with: @order_receipt.Email_address
    fill_in "Gst", with: @order_receipt.Gst
    fill_in "Time", with: @order_receipt.Time
    fill_in "Medical name", with: @order_receipt.medical_name
    click_on "Update Order receipt"

    assert_text "Order receipt was successfully updated"
    click_on "Back"
  end

  test "should destroy Order receipt" do
    visit order_receipt_url(@order_receipt)
    click_on "Destroy this order receipt", match: :first

    assert_text "Order receipt was successfully destroyed"
  end
end
