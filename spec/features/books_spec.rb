require "spec_helper"

feature "books" do

  # User Story
  # ----------
  # As a Bookshelf Application User
  # I want to view a list of books
  # So that I can see what other people are reading

  # Acceptance Criteria
  # -------------------
  # * A list of books are displayed


  context "read" do
    scenario "user views a bookshelf" do
      rails_4_way = Book.create(title: "Rails 4 Way")
      ready_player_one = Book.create(title: "Ready Player One")

      visit "/books"

      expect(page).to have_content("Rails 4 Way")
      expect(page).to have_content("Ready Player One")
    end
  end
end
