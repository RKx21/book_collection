# location: spec/unit/unit_spec.rb
require 'rails_helper'
RSpec.describe Task, type: :model do
  subject do
    described_class.new(
      title: 'Harry Potter',
      author: 'J.K Rowling',
      price: 9,
      published_date: '2020-06-30 00:00:00 UTC'
    )
  end

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end
  it 'is not valid without a name' do
    subject.title = nil
    expect(subject).not_to be_valid
  end
end
