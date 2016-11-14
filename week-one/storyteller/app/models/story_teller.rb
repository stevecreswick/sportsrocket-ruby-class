class StoryTeller < ApplicationRecord
  has_many :stories
  has_many :characters

end
