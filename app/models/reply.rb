class Reply < ApplicationRecord
  belongs_to :user
  belongs_to :bug
  belongs_to :comment

  validates :body, presence: true
end
