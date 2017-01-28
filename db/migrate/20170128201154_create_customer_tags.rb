class CreateCustomerTags < ActiveRecord::Migration[5.0]
  def change
    create_table :customer_tags do |t|
      t.string :value
      t.integer :document_id

      t.timestamps
    end
  end
end
