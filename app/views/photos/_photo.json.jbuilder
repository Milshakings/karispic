json.extract! photo, :id, :name, :title, :content, :created_at, :updated_at
json.url photo_url(photo, format: :json)
