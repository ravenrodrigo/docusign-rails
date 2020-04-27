class SignatureTemplate < ApplicationRecord
     has_many_attached :file
     belongs_to :user
end
