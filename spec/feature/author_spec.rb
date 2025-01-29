require 'rails_helper'

RSpec.describe "Creating a book", type: :feature do
  scenario "valid inputs" do
    visit new_task_path
    fill_in "task[author]", with: "J.K Rowling"
    click_on "Create Book"

    expect(page).to have_content("Book was successfully created.")
    expect(page).to have_content("J.K Rowling")
  end

  scenario "invalid inputs (author is blank)" do
    visit new_task_path
    fill_in "task[author]", with: ""
    click_on "Create Book"

    expect(page).to have_content("Author can't be blank")
  end
end