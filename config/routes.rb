Rails.application.routes.draw do
  get "people", to: "people#index"
  get "people/new", to: "people#new"
  get "people/:id", to: "people#show"
  get "people/:id/edit", to: "people#edit"

  patch "people/:id", to: "people#update", as: :person
  post "people", to: "people#create"
  delete "people/:id", to: "people#destroy"


end
