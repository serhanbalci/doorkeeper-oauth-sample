class CreateBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :books do |t|
      t.string :title
      t.text :description
      t.datetime :published_at
      t.references :user

      t.timestamps
    end
    add_foreign_key :books, :users, column: :user_id
  end
end
