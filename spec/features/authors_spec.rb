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

      expect(page).to have_link("Stephen King", href: "/authors/#{stephen.id}/books")
      expect(page).to have_link("Ernest Kline", href: "/authors/#{ernest.id}/books")
    end

    scenario "view books by an author" do
      stephen = Author.create(name: "Stephen King")
      carrie = Book.create(title: "Carrie")
      the_shining = Book.create(title: "The Shining")
      stephen.books << carrie
      stephen.books << the_shining

      visit "/authors/#{stephen.id}/books"

      expect(page).to have_content("Carrie")
      expect(page).to have_content("The Shining")
    end
  end
end
