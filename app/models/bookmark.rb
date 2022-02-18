class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list

  validates :movie, uniqueness: { scope: :list }
  validates :list, uniqueness: true
  validates :comment, presence: true, length: { minimum: 6 }
end
