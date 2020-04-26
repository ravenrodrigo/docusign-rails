class CreateSignatures < ActiveRecord::Migration[6.0]
  def change
    create_table :signatures, id: :uuid do |t|
      t.integer :signee_id, foreign_key: true
      t.integer :delta_id, foreign_key: true

      t.timestamps
    end
  end
end
