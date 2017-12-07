class Competence < ApplicationRecord
	has_many :user_competences
	has_many :users, through: :user_competences

	belongs_to :user
end
