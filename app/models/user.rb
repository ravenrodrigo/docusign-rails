class User < ApplicationRecord
  has_many :signee, :signature_template, polymorphic: true

end
