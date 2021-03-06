class Author < ApplicationRecord
  has_many :posts, dependent: :destroy
  has_many :comments

  validates :username, presence: true, uniqueness: true, length: { in: 4..12 }
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true, length: { in: 6..16 }
end
