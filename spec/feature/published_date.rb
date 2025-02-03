require 'rails_helper'

RSpec.describe 'Creating a book', type: :feature do
  scenario 'valid inputs' do
    visit new_task_path
    select '2020', from: 'task_published_date_1i'
    select 'June', from: 'task_published_date_2i'
    select '30', from: 'task_published_date_3i'

    click_on 'Create Book'

    expect(page).to have_content('Book was successfully created.')
    expect(page).to have_content('2020-06-30 00:00:00 UTC')
  end

  scenario 'invalid inputs (date published is blank)' do
    visit new_task_path
    select '', from: 'task_published_date_1i'
    select '', from: 'task_published_date_2i'
    select '', from: 'task_published_date_3i'
    click_on 'Create Book'

    expect(page).to have_content("Published date can't be blank")
  end
end
