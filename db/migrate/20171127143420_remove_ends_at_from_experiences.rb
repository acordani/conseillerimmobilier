class RemoveEndsAtFromExperiences < ActiveRecord::Migration[5.0]
  def change
    remove_column :experiences, :ends_at, :datetime
  end
end
