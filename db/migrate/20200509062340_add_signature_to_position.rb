class AddSignatureToPosition < ActiveRecord::Migration[6.0]
  def change
    add_reference :positions, :signature, null: false, foreign_key: true
  end
end
