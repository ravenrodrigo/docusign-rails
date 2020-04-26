class Signee < ApplicationRecord
  # Enumerator
  enum role: [owner: 0, signeer:1]
  has_one :signature
  has_and_belongs_to_many :users, :documents
  
end
