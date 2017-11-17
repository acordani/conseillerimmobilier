class CreateExperiences < ActiveRecord::Migration[5.0]
  def change
    create_table :experiences do |t|
      t.string :title
      t.datetime :starts_at
      t.datetime :ends_at
      t.string :company
      t.text :description
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
