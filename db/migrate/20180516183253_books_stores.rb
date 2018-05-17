class BooksStores < ActiveRecord::Migration[5.2]
  def change
    create_table :books_stores, id: false do |t|
      t.belongs_to :book, index: true
      t.belongs_to :store, index: true
    end
  end
end

