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
end
