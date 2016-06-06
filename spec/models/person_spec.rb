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
end
