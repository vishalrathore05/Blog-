class AddSrNameToComments < ActiveRecord::Migration[7.0]
  def change
    add_column :comments, :sr_name, :string
  end
end
