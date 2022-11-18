class AddJaan1ToComments < ActiveRecord::Migration[7.0]
  def change
    add_column :comments, :jaan1, :string
  end
end
