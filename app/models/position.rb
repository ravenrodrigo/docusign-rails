class Position < ApplicationRecord
  belongs_to :signatures, :documents

  # Validations
  validate :signatures, :documents,  presence: true
end
