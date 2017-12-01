class AddConstructionToSales < ActiveRecord::Migration[5.0]
  def change
    add_column :sales, :construction, :string
  end
end
