class CreatePositions < ActiveRecord::Migration[6.0]
  def change
    create_table :positions do |t|
      t.belongs_to :document, index:true, null:false, foreign_key:true
      t.float :x
      t.float :y

      t.timestamps
    end
  end
end
