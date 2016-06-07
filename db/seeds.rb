person = Person.find_or_create_by(name: "Richard")

books_params = [
  { title: "Ready Player One", authors: ["Ernest Kline"] },
  { title: "The Shining", authors: ["Stephen King"] },
  { title: "Carrie", authors: ["Stephen King"] },
  { title: "Rails 4 Way", authors: ["Obie Fernandez", "Kevin Faustino"] }
]

books_params.each do |book_params|
  book = Book.find_or_create_by(title: book_params[:title], person: person)

  authors = book_params[:authors].map do |author_name|
    Author.find_or_create_by(name: author_name)
  end

  book.authors.push(*authors)
end
