class Document < ApplicationRecord
  enum status: [open: 0, completed: 1, expired: 2, void: 3]
  has_many_attached :documents
  has_one :position
  has_many :signees
end
