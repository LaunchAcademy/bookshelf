require "spec_helper"

RSpec.describe Person do
  let!(:person) { Person.create(name: "Richard") }

  describe "#name" do
    it "allows you to set the name" do
      expect(person).to be_a(Person)
      expect(person.persisted?).to eq(true)
    end

    it "allows you to get the name" do
      expect(person.name).to eq("Richard")
    end

    it "must be present" do
      no_name = Person.new(name: nil)
      expect(no_name).to_not be_valid
    end
  end

  describe "#books" do
    it "returns the books owned by a person" do
      the_elements = Book.create(title: "The Elements", person: person)
      flour_too = Book.create(title: "Flour, too", person: person)

      expect(person.books).to eq([the_elements, flour_too])
    end
  end

  describe "#role" do
    it "defaults to 'user'" do
      expect(person.role).to eq("user")
    end

    it "can be set to 'moderator' or 'admin'" do
      person.assign_attributes(role: "moderator")
      expect(person).to be_valid

      person.assign_attributes(role: "admin")
      expect(person).to be_valid
    end

    it "rejects other values" do
      person.assign_attributes(role: nil)
      expect(person).to_not be_valid

      person.assign_attributes(role: "")
      expect(person).to_not be_valid

      person.assign_attributes(role: "god")
      expect(person).to_not be_valid
    end
  end
end
