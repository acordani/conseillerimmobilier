class Sale < ApplicationRecord

	CONSTRUCTION = %w(Appartement Maison)
	PHASE = ["A vendre", "Vendu"]


	belongs_to :user

	has_attachments :photos, maximum: 4
end
