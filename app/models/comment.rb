class Comment < ApplicationRecord
  belongs_to :user_id
  belongs_to :bug_id
end
