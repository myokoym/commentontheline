class CreateLines < ActiveRecord::Migration
  def change
    create_table :lines do |t|
      t.references :document, index: true
      t.string :text
      t.integer :number

      t.timestamps null: false
    end
    add_foreign_key :lines, :documents
  end
end
