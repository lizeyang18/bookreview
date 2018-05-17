[Book, Category, Review, Store].each(&:delete_all)

@index = 1
Book.populate 5 do |book|
  book.title        = Faker::Book.title
  book.description  = Faker::Lorem.paragraph(5)
  book.author       = Faker::Book.author
  book.user_id      = Faker::Number.digit
  book.category_id  = Faker::Number.digit
  book.book_img_file_name = "book_" + @index.to_s + ".jpg"
  @index = @index + 1
  book.book_img_content_type =  "image/jpeg"
  Review.populate 1..6 do |review|
    review.rating   = Faker::Number.digit
    review.comment  = Faker::Lorem.sentence(1)
    review.book_id  = book.id
  end
end


Category.populate 4 do |category|
  category.name     = Faker::Book.genre
end

Store.populate 4 do |store|
  store.name     = Faker::Lorem.sentences(120)
end
