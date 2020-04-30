class Signature < ApplicationRecord
  has_and_belongs_to_many :signee, :position

  # Validations
  validate :signee, presence: true
end
