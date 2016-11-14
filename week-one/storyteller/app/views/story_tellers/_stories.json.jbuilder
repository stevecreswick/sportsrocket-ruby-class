json.extract! story_teller, :id, :name, :description, :created_at, :updated_at

json.stories(story_teller.stories[0..2])
