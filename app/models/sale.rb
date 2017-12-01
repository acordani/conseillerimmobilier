class Sale < ApplicationRecord

	CONSTRUCTION = %w(Appartement Maison)


	belongs_to :user

	has_attachments :photos, maximum: 3
end
