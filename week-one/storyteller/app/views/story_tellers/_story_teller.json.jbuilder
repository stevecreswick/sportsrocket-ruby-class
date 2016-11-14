json.extract! story_teller, :id, :name, :description, :created_at, :updated_at
json.url story_teller_url(story_teller, format: :json)

json.partial! 'stories', locals: { story_teller: story_teller }
