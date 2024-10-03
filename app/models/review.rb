class Review < ApplicationRecord
  belongs_to :car

  validate :comment, presence: true
  validate :rating, presence: true, numericality: { only_integer: true }
end
