require "spec_helper"

RSpec.describe Author do
  describe "#name" do
    let(:author) { Author.create(name: "Stephen King") }

    it "allows you to set the name" do
      expect(author).to be_a(Author)
      expect(author.persisted?).to eq(true)
    end

    it "allows you to get the name" do
      expect(author.name).to eq("Stephen King")
    end
  end
end
