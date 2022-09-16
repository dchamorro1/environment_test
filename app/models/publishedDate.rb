class Book < ApplicationRecord
    validates :published_date, presence: true
end
