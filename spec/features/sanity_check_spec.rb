require "spec_helper"

feature "sanity check" do
  scenario "user sees the title of the application" do
    visit "/"

    expect(page).to have_content "Welcome to the Bookshelf!"
  end
end
