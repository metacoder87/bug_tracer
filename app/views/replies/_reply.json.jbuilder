json.extract! reply, :id, :body, :user_id, :bug_id, :comment_id, :created_at, :updated_at
json.url reply_url(reply, format: :json)
