$library_name = "City Library"

class Library
  def initialize
    @books = []
  end

  def add_book(book)
    @books << book
  end

  def show_books
    puts "#{$library_name} has: #{@books.join(", ")}"
  end
end

lib = Library.new
lib.add_book("Ruby 101")
lib.add_book("DSA in Ruby")
lib.show_books