module CategoriesHelper

  def books_or_not
    if @books.empty?
     render partial: "shared/no_book" 
    else
     render partial: "shared/book_list" , locals: {books: @books}
    end
  end
end
