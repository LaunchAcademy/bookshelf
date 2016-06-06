require "spec_helper"

RSpec.describe Book do
  describe "#title" do
    it "allows you to set the title" do
      book = Book.new
      book.title = "Ready Player One"
      book.save

      expect(book).to be_a(Book)
      expect(book.persisted?).to eq(true)
    end

    it "allows you to get the title" do
      book = Book.new
      book.title = "Ready Player One"
      book.save

      expect(book.title).to eq("Ready Player One")
    end
  end
end
