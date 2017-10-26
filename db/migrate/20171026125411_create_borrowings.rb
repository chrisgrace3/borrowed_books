class CreateBorrowings < ActiveRecord::Migration[5.1]
  def change
    create_table :borrowings do |t|
      t.string :book_title, null: false
      t.string :book_author
      t.string :book_isbn
      t.datetime :borrowed_on
      t.string :borrowed_by
      t.integer :owner_id

      t.timestamps
    end
  end
end
