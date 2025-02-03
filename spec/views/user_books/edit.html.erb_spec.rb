require 'rails_helper'

RSpec.describe "user_books/edit", type: :view do
  before(:each) do
    @user = User.create!(username: 'testuser')
    @task = Task.create!(title: 'Test Task', author: 'Author', price: 10, published_date: '2020-06-30')
    @user_book = assign(:user_book, UserBook.create!(
      user: @user,
      task: @task
    ))
  end

  it "renders the edit user_book form" do
    render

    assert_select "form[action=?][method=?]", user_book_path(@user_book), "post" do
      assert_select "select[name=?]", "user_book[user_id]"
      assert_select "select[name=?]", "user_book[book_id]"
    end
  end
end
