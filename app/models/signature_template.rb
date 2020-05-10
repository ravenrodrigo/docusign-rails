class SignatureTemplate < ApplicationRecord
  # Associations
  belongs_to :user

  # Validations
  validates :user_id, :file, :created_at, :updated_at, presence: true
end
