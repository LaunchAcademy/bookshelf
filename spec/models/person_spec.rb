require "spec_helper"

RSpec.describe Person do
  describe "#name" do
    let(:person) { Person.create(name: "Richard") }

    it "allows you to set the name" do
      expect(person).to be_a(Person)
      expect(person.persisted?).to eq(true)
    end

    it "allows you to get the name" do
      expect(person.name).to eq("Richard")
    end
  end

  describe "#books" do
    let(:person) { Person.create(name: "Richard") }

    it "returns the books owned by a person" do
      the_elements = Book.create(title: "The Elements", person: person)
      flour_too = Book.create(title: "Flour, too", person: person)

      expect(person.books).to eq([the_elements, flour_too])
    end
  end
end
