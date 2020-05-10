class CreateSignatureTemplates < ActiveRecord::Migration[6.0]
  def change
    create_table :signature_templates do |t|
      t.integer :user_id, null: false, foreign_key: true
      t.binary :file

      t.timestamps
    end
  end
end
