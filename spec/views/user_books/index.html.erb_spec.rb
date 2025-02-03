require 'rails_helper'

RSpec.describe "user_books/index", type: :view do
  before(:each) do
    @user = User.create!(username: 'testuser')
    @task = Task.create!(title: 'Test Task', author: 'Author', price: 10, published_date: '2020-06-30')
    assign(:user_books, [
      UserBook.create!(
        user: @user,
        task: @task
      ),
      UserBook.create!(
        user: @user,
        task: @task
      )
    ])
  end

  it "renders a list of user_books" do
    render
    assert_select "tr>td", text: @user.username.to_s, count: 2
    assert_select "tr>td", text: @task.title.to_s, count: 2
  end
end
