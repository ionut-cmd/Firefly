json.extract! forum, :id, :title, :content, :imageurl, :created_at, :updated_at
json.url forum_url(forum, format: :json)
