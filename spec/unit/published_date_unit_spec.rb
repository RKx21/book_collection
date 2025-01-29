
require 'rails_helper' 
RSpec.describe Task, type: :model do 
    subject { described_class.new(published_date: '2025-01-29') }
    
    it 'is valid with valid attributes' do 
        expect(subject).to be_valid 
    end 
    it 'is not valid without an published date' do 
        subject.published_date = nil 
        expect(subject).not_to be_valid 
    end 
end