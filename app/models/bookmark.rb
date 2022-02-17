class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list, dependent: :destroy

  validates :movie, uniqueness: { scope: :list}
  validates :list, uniqueness: true
  validates :comment, presence: true, lenght: { minimum: 6, too_short: "your comment cannot be shorter than %{count}" }
end
