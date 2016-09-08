json.extract! newsscraper, :id, :title, :body, :time, :image_url, :created_at, :updated_at
json.url newsscraper_url(newsscraper, format: :json)