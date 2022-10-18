class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :bug
  has_many :replies

  validates :body, :bug_id, :user_id, presence: true 
end
