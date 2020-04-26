class Position < ApplicationRecord
  belongs_to :signatures, :documents
end
