class BooksStores < ActiveRecord::Migration[5.2]
  def change
    create_table :books_stores, id: false do |t|
      t.belongs_to :book, index: true
      t.belongs_to :store, index: true
    end


    execute "INSERT INTO books_stores values(9, 1)"
    execute "INSERT INTO books_stores values(9, 2)"
    execute "INSERT INTO books_stores values(9, 3)"
    execute "INSERT INTO books_stores values(10, 2)"
    execute "INSERT INTO books_stores values(10, 3)"
    execute "INSERT INTO books_stores values(10, 4)"
    execute "INSERT INTO books_stores values(11, 1)"
    execute "INSERT INTO books_stores values(11, 1)"
    execute "INSERT INTO books_stores values(11, 2)"
    execute "INSERT INTO books_stores values(11, 3)"
  end
end

