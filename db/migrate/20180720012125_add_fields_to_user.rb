class AddFieldsToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :amount, :string
    add_column :users, :company_name, :string
    add_column :users, :company_zip, :string
  end
end
