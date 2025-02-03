class UserBook < ApplicationRecord
  belongs_to :user
  belongs_to :task, foreign_key: 'book_id'

    validates :user_id, presence: true
    validates :book_id, presence: true
end
