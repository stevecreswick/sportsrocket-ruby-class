json.extract! story, :id, :name, :description, :story_teller_id, :created_at, :updated_at
json.url story_url(story, format: :json)