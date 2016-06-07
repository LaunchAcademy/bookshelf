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

      expect(page).to have_link("Tim", href: "/people/#{tim.id}/books")
      expect(page).to have_link("Tom", href: "/people/#{tom.id}/books")
    end

    scenario "user views someone's bookshelf" do
      richard = Person.create(name: "Richard")
      rails_4_way = Book.create(title: "Rails 4 Way", person: richard)
      http = Book.create(title: "HTTP: The Definitive Guide", person: richard)

      visit "/people/#{richard.id}/books"

      expect(page).to have_content("Richard's Bookshelf")
      expect(page).to have_content("Rails 4 Way")
      expect(page).to have_content("HTTP: The Definitive Guide")
    end
  end
end
