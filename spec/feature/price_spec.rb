require 'rails_helper'

RSpec.describe "Creating a book", type: :feature do
  scenario "valid inputs" do
    visit new_task_path
    fill_in "task[price]", with: "9"
    click_on "Create Book"

    expect(page).to have_content("Book was successfully created.")
    expect(page).to have_content("9")
  end

  scenario "invalid inputs (price is blank)" do
    visit new_task_path
    fill_in "task[price]", with: ""
    click_on "Create Book"

    expect(page).to have_content("Price can't be blank")
  end
end