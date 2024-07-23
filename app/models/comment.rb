class Comment < ApplicationRecord
  include Visible
  
  belongs_to :book

  validates :body, presence: true, length: { minimum: 10 }

end
