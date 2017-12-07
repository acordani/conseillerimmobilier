class AddUserIdToCompetences < ActiveRecord::Migration[5.0]
  def change
    add_column :competences, :user_id, :integer
  end
end
