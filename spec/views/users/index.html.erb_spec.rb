require 'rails_helper'

RSpec.describe "users/index", type: :view do
  before(:each) do
    assign(:users, [
      User.create!(
        username: 'testuser1'
      ),
      User.create!(
        username: 'testuser2'
      )
    ])
  end

  it "renders a list of users" do
    render
    assert_select "tr>td", text: 'testuser1'.to_s, count: 1
    assert_select "tr>td", text: 'testuser2'.to_s, count: 1
  end
end
