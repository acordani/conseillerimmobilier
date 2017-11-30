class RemoveStartsAtFromExperiences < ActiveRecord::Migration[5.0]
  def change
    remove_column :experiences, :starts_at, :datetime
  end
end
