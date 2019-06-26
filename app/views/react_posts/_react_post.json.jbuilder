json.extract! react_post, :id, :title, :content, :created_at, :updated_at
json.url react_post_url(react_post, format: :json)
