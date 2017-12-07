class CreateUserCompetences < ActiveRecord::Migration[5.0]
  def change
    create_table :user_competences do |t|
      t.references :user, foreign_key: true
      t.references :competence, foreign_key: true

      t.timestamps
    end
  end
end
