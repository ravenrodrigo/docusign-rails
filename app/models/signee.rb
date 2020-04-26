class Signee < ApplicationRecord
  has_one :signature
  has_and_belongs_to_many :users, :documents
  
end
