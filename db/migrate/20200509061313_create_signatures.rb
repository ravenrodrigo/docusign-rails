class CreateSignatures < ActiveRecord::Migration[6.0]
  def change
    create_table :signatures do |t|
      t.integer :signee_id, null: false, foreign_key: true
      t.integer :position_id, null: false, foreign_key: true

      t.timestamps
    end
  end
end
