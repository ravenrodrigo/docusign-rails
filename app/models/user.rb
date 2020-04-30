class User < ApplicationRecord
  # Associations
  has_many :signee, :signature_template, polymorphic: true
  # Validations
  validates :first_name, :last_name,  presence: true
  validates :email, confirmation: true, uniqueness: true
  # For form email confirmation
  validates :email_confirmation, presence: true
 end

