class CreateDocuments < ActiveRecord::Migration[5.0]
  def change
    create_table :documents do |t|
      t.string :title
      t.text :encrypted_data

      t.timestamps
    end
  end
end
