class CreatePositions < ActiveRecord::Migration[6.0]
  def change
    create_table :positions, id: :uuid do |t|
      t.integer :document_id, foreign_key: true
      t.float :x
      t.float :y

      t.timestamps
    end
  end
end
