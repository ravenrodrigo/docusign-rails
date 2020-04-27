class CreateDocuments < ActiveRecord::Migration[6.0]
  def change
    create_table :documents do |t|
      t.blob :file
      t.enum :status
      t.datetime :expiration_date

      t.timestamps
    end
  end
end
