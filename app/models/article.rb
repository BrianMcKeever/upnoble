class Article < ApplicationRecord
  belongs_to :user
  validates :slug, format: {
              with: /\A[a-z\-_]+\Z/,
              message: "All lower case English letters, numbers, dashes and underscores"},
            uniqueness: true,
            presence: true
  validates :title, presence: true
  validates :subtitle, presence: true
  validates :body, presence: true
  validates :user_id, presence: true
end
