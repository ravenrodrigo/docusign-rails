class AddSigneeToDocument < ActiveRecord::Migration[6.0]
  def change
    add_reference :documents, :signee, null: false, foreign_key: true
  end
end
