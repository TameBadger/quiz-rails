Rails.application.routes.draw do
  resources :pair_answers
  resources :quiz_sheets
  resources :digital_fingerprints, :path => '/digital-fingerprints'
  resources :quiz_sheets, :path => '/quiz-sheets'
  resources :pair_answers, :path => '/pair-answers'
  resources :pairs
  resources :languages
  resources :statements
end
