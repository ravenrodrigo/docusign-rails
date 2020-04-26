class User < ApplicationRecord
  has_many :signee, :signature_template

end
