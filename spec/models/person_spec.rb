require "spec_helper"

RSpec.describe Person do
  describe "#name" do
    it "allows you to set the name" do
      person = Person.new
      person.name = "Richard"
      person.save

      expect(person).to be_a(Person)
      expect(person.persisted?).to eq(true)
    end

    it "allows you to get the name" do
      person = Person.new
      person.name = "Richard"
      person.save

      expect(person.name).to eq("Richard")
    end
  end
end
