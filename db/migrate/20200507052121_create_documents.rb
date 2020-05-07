class CreateDocuments < ActiveRecord::Migration[6.0]
  def change
    create_table :documents do |t|
      t.binary :file
      t.integer :status, default: 0
      t.datetime :expiration_date

      t.timestamps
    end
  end
end
