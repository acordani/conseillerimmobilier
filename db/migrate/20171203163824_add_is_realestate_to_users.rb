class AddIsRealestateToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :is_realestate, :boolean
  end
end
