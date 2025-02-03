require 'rails_helper'
RSpec.describe Task, type: :model do
  subject { described_class.new(author: 'J.K Rowling') }

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end
  it 'is not valid without an author' do
    subject.author = nil
    expect(subject).not_to be_valid
  end
end
