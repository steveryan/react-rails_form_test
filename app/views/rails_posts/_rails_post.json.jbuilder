json.extract! rails_post, :id, :title, :content, :created_at, :updated_at
json.url rails_post_url(rails_post, format: :json)
