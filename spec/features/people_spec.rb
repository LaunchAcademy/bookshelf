
require "spec_helper"

feature "people" do

  # User Story
  # ----------
  # As a Bookshelf Application User
  # I want to view a list of other people
  # So that I know who else is using this application

  # Acceptance Criteria
  # -------------------
  # * A list of users of the application is displayed
  # * User names link to that user's bookshelf


  context "read" do
    scenario "user views an index of people" do
      tim = Person.create(name: "Tim")
      tom = Person.create(name: "Tom")

      visit "/people"

      expect(page).to have_link("Tim")
      expect(page).to have_link("Tom")
    end
  end
end
