require 'rails_helper'

RSpec.describe 'Creating a book', type: :feature do
  scenario 'valid inputs' do
    visit new_task_path
    fill_in 'task[title]', with: 'Harry Potter'
    click_on 'Create Book'

    expect(page).to have_content('Book was successfully created')
    expect(page).to have_content('Harry Potter')
  end

  scenario 'invalid inputs (title is blank)' do
    visit new_task_path
    fill_in 'task[title]', with: ''
    click_on 'Create Book'

    expect(page).to have_content("Title can't be blank")
  end
end
