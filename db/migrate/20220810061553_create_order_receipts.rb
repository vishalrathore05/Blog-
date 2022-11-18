class CreateOrderReceipts < ActiveRecord::Migration[7.0]
  def change
    create_table :order_receipts do |t|
      t.string :medical_name
      t.string :Gst
      t.string :Email_address
      t.time :Time

      t.timestamps
    end
  end
end
