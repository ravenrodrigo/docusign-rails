class Document < ApplicationRecord
  enum status: %i[draft verified published]

  # Associations
  has_one_attached :file

  # Validations
  validates :status, presence: true, inclusion: { in: Document.statuses.keys }
  validates :expiration_date, presence: true
end
