require 'rails_helper'

RSpec.describe "Creating a book", type: :feature do
  # Happy path: Book is created successfully
  scenario "valid inputs" do
    visit new_task_path # Navigate to the new book form
    fill_in "task[title]", with: "Harry Potter" # Fill in the title field
    click_on "Create Book" # Submit the form

    # Expect a flash notice and that the book is displayed on the show page
    expect(page).to have_content("Book was successfully created")
    expect(page).to have_content("Harry Potter")
  end

  # Rainy-day: Book creation fails due to a blank title
  scenario "invalid inputs (title is blank)" do
    visit new_task_path # Navigate to the new book form
    fill_in "task[title]", with: "" # Leave the title field blank
    click_on "Create Book" # Submit the form

    # Expect a flash alert and an error message
    expect(page).to have_content("Title can't be blank")
  end
end