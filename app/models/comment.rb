class Comment < ApplicationRecord
  belongs_to :book

  validates :body, presence: true, length: { minimum: 10 }
end
