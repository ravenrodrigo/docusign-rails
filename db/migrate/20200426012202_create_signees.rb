class CreateSignees < ActiveRecord::Migration[6.0]
  def change
    create_table :signees, id: :uuid do |t|
      t.integer :user_id, foreign_key: true
      t.integer :document_id, foreign_key: true

      t.timestamps
    end
  end
end
