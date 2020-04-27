class CreateDocuments < ActiveRecord::Migration[6.0]
  def change
    create_table :documents, id: :uuid do |t|
      t.integer :status
      t.datetime :expiration_date

      t.timestamps
    end
  end
end
