class CreateDocuments < ActiveRecord::Migration
  def change
    create_table :documents do |t|
      t.string :title
      t.references :user, index: true

      t.timestamps null: false
    end
    add_foreign_key :documents, :users
  end
end
