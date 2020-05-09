class CreateSignees < ActiveRecord::Migration[6.0]
  def change
    create_table :signees do |t|
      t.integer :user_id
      t.integer :document_id, null: true, foreign_key: true
      t.integer :role

      t.timestamps
    end
  end
end
