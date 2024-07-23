class Book < ApplicationRecord

  has_many :comments, dependent: :destroy

  validates :title, presence:true
  validates :body, presence: true, length: { minimum: 10 }
  validates :grade, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0, less_than_or_equal_to: 10 }
end
