crumb :root do
  link "TOP", root_path
end

crumb :categories do
  link "カテゴリ一覧", categories_path
end

crumb :category do |category|
  link category.name, category_path(category)
  parent :categories 
end

crumb :book do |book|
  link book.title, book_path(book)
  parent :category, book.category
end
