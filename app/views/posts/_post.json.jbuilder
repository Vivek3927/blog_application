json.extract! post, :id, :title, :author, :content, :status, :creation_date, :published_date, :user_id, :created_at, :updated_at
json.url post_url(post, format: :json)
