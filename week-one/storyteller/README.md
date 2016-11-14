# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...


# Campfire Framework
  - Campfire
    -has_many story_tellers

    Genre - has many story_tellers
    Genre - has_many stories through story_tellers

    - Story Teller
      - has_many Stories
      - has_many Characters through Stories
      - has_many paragraphs through Stories
      - has_many Conflicts through Stories

      - Stories - a Story
        ** Belongs To - StoryTeller
        ** Has Many - Characters
          - Character
          ** has_and_belongs_to_many stories
            - Hero
              - The Reader of the story
            - Companion
              - Followers or One Off Helpers
            - Villain
              - Henchman
            - Merchant
        ** Has Many - Acts
          ** Has Many - Chapters
            ** Has Many Sequences
              ** Has Many Paragraphs
              ** Has Many Conflicts
        ** Has Many - Resolutions

          - Characters

Can set a paragraph to a sequence in a chapter, a chapter can then display random sequences.  A chapter should also be able to just display random chapters.

        - has_many
        - acts
          - has_many chapters
            - has_many sequences
              - has_many paragraphs
                - has_many sentences
              - has_many conflicts
                - StatCheck
                - has_many encounters
                  - Fights
                    - StatCheck
                  - Challenges
                    - StatCheck
                  - Environmental
                    - StatCheck

  #Story Teller Builds all the checks and the story randomly based off of variables and the person plays through it.
