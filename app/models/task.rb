class Task < ApplicationRecord
    belongs_to :publisher, optional: true
end
