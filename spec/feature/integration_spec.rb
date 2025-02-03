require 'rails_helper'

RSpec.describe 'Creating a book', type: :feature do
  scenario 'valid inputs' do
    visit new_task_path
    fill_in 'task[title]', with: 'Harry Potter'
    fill_in 'task[author]', with: 'J.K Rowling'
    fill_in 'task[price]', with: '9'
    select '2020', from: 'task_published_date_1i'
    select 'June', from: 'task_published_date_2i'
    select '30', from: 'task_published_date_3i'
    click_on 'Create Book'

    expect(page).to have_content('Book was successfully created')
    expect(page).to have_content('Harry Potter')
    expect(page).to have_content('J.K Rowling')
    expect(page).to have_content('9')
    expect(page).to have_content('Book was successfully created.')
    expect(page).to have_content('2020-06-30 00:00:00 UTC')
  end

  scenario 'invalid inputs (title is blank)' do
    visit new_task_path
    fill_in 'task[title]', with: ''
    fill_in 'task[author]', with: ''
    fill_in 'task[price]', with: ''
    select '', from: 'task_published_date_1i'
    select '', from: 'task_published_date_2i'
    select '', from: 'task_published_date_3i'
    click_on 'Create Book'

    expect(page).to have_content("Title can't be blank")
    expect(page).to have_content("Author can't be blank")
    expect(page).to have_content("Price can't be blank")
    expect(page).to have_content("Published date can't be blank")
  end
end
