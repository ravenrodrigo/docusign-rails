class CreateSignatureTemplates < ActiveRecord::Migration[6.0]
  def change
    create_table :signature_templates, id: :uuid do |t|
      t.integer :user_id, foreign_key: true

  
      t.timestamps
    end
  end
end
