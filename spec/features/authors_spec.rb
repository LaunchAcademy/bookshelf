require "spec_helper"

feature "authors" do

  # User Story
  # ----------
  # As a Bookshelf Application User
  # I want to view a list of authors
  # So that I know what authors other people are reading

  # Acceptance Criteria
  # -------------------
  # * A list of authors is displayed
  # * Author names link to that author's books


  context "read" do
    scenario "user views an index of people" do
      stephen = Author.create(name: "Stephen King")
      ernest = Author.create(name: "Ernest Kline")

      visit "/authors"

      expect(page).to have_link("Stephen King")
      expect(page).to have_link("Ernest Kline")
    end
  end
end
