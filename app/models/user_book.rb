class UserBook < ApplicationRecord
  belongs_to :user
  belongs_to :task, foreign_key: 'book_id'
end
