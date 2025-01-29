require 'rails_helper'

RSpec.describe "Creating a book", type: :feature do
  scenario "valid inputs" do
    visit new_task_path
    fill_in "task[published_date]", with: "2025-1-29"
    click_on "Create Book"

    expect(page).to have_content("Book was successfully created.")
    expect(page).to have_content("J.K Rowling")
  end

  scenario "invalid inputs (date published is blank)" do
    visit new_task_path
    fill_in "task[date_published]", with: ""
    click_on "Create Book"

    expect(page).to have_content("Published Date can't be blank")
  end
end