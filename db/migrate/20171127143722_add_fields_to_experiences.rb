class AddFieldsToExperiences < ActiveRecord::Migration[5.0]
  def change
    add_column :experiences, :start_month, :string
    add_column :experiences, :start_year, :string
    add_column :experiences, :end_month, :string
    add_column :experiences, :end_year, :string
  end
end
