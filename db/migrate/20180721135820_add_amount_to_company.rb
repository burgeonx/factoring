class AddAmountToCompany < ActiveRecord::Migration[5.0]
  def change
    add_column :companies, :amount, :string
  end
end
