class CreateDocumentKeys < ActiveRecord::Migration[5.0]
  def change
    create_table :document_keys do |t|
      t.integer :document_id
      t.integer :user_id
      t.integer :group_id
      t.string :encrypted_document_key

      t.timestamps
    end
  end
end
