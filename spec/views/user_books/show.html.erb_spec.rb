require 'rails_helper'

RSpec.describe "user_books/show", type: :view do
  before(:each) do
    @user = User.create!(username: 'testuser')
    @task = Task.create!(title: 'Test Task', author: 'Author', price: 10, published_date: '2020-06-30')
    @user_book = assign(:user_book, UserBook.create!(
      user: @user,
      task: @task
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(@user.username)
    expect(rendered).to match(@task.title)
  end
end
