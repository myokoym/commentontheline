class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.references :line, index: true
      t.references :user, index: true
      t.text :text

      t.timestamps null: false
    end
    add_foreign_key :comments, :lines
    add_foreign_key :comments, :users
  end
end
