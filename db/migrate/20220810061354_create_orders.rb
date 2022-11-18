class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.string :receipt
      t.string :medical_name
      t.string :Gst
      t.string :Email_address
      t.time :Time

      t.timestamps
    end
  end
end
