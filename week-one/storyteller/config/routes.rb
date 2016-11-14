Rails.application.routes.draw do

  resources :characters
  resources :story_tellers

  resources :stories

end
