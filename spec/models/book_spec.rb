require "spec_helper"

RSpec.describe Book do
  describe "#title" do
    let(:book) { Book.create(title: "Ready Player One") }

    it "allows you to set the title" do
      expect(book).to be_a(Book)
      expect(book.persisted?).to eq(true)
    end

    it "allows you to get the title" do
      expect(book.title).to eq("Ready Player One")
    end
  end

  describe "#person" do
    it "returns the owner of the book" do
      person = Person.create(name: "Richard")
      book = Book.create(title: "The Shining", person: person)

      expect(book.person).to eq(person)
    end
  end

  describe "#pages" do
    it "returns the number of pages in the book" do
      book = Book.create(title: "Rails 4 Way", pages: 880)
      expect(book.pages).to eq(880)
    end
  end
end
