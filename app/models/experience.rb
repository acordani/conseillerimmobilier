class Experience < ApplicationRecord
  belongs_to :user

  has_attachment :logo
end
