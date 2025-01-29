
require 'rails_helper' 
RSpec.describe Task, type: :model do 
    subject { described_class.new(published_date: '2020-06-30 00:00:00 UTC') }
    
    it 'is valid with valid attributes' do 
        expect(subject).to be_valid 
    end 
    it 'is not valid without an published date' do 
        subject.published_date = nil 
        expect(subject).not_to be_valid 
    end 
end