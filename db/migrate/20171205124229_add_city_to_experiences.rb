class AddCityToExperiences < ActiveRecord::Migration[5.0]
  def change
    add_column :experiences, :city, :string
  end
end
