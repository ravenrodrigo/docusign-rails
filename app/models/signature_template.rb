class SignatureTemplate < ApplicationRecord
  # Associations  
  has_many_attached :file
  belongs_to :user
  # Validations
  validate :file, presence: true
end
