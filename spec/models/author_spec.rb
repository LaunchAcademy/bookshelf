require "spec_helper"

RSpec.describe Author do
  let!(:author) { Author.create(name: "Stephen King") }

  describe "#name" do
    it "allows you to set the name" do
      expect(author).to be_a(Author)
      expect(author.persisted?).to eq(true)
    end

    it "allows you to get the name" do
      expect(author.name).to eq("Stephen King")
    end

    it "must be unique" do
      king_again = Author.create(name: "Stephen King")
      expect(king_again).to_not be_valid
    end
  end

  describe "#books" do
    it "returns the books written by an author" do
      carrie = Book.create(title: "Carrie")
      the_shining = Book.create(title: "The Shining")
      author.books << carrie
      author.books << the_shining

      expect(author.books).to eq([carrie, the_shining])
    end
  end
end
