class Post < ApplicationRecord
  belongs_to :author
  has_many :comments, dependent: :destroy

  validates :title, presence: true
  validates :body, presence: true
  validates :author_id, presence: true
end
