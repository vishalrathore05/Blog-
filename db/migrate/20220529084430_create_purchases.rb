class CreatePurchases < ActiveRecord::Migration[7.0]
  def change
    create_table :purchases do |t|
      t.string :name
      t.string :cate

      t.timestamps
    end
  end
end
