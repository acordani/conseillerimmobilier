class AddCurrentlyWorkToExperiences < ActiveRecord::Migration[5.0]
  def change
    add_column :experiences, :currently_work, :boolean
  end
end
