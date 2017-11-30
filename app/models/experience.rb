class Experience < ApplicationRecord
  belongs_to :user

  has_attachment :logo

  MONTH = %w(janvier fevrier mars avril mai juin juillet août septembre octobre novembre decembre)

  validates :starts_at, inclusion: { in: MONTH }
   
end
