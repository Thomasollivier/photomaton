Rails.application.routes.draw do
  root to: 'profils#home'

  resources :profils
  resources :expertises

  # # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # lire tous les profils
  # get "profils" => "profils#index"

  # # lire un profil
  # get "profils/:id" => "profils#show"

  # # créer un profil
  # get "profils/new" => "profils#new"
  # post "profils" => "profils#create"

  # # update un profil
  # get "profils/:id/edit" => "profils#edit"
  # patch "profils/:id" => "profils#update"

  # # supprimer un profil
  # delete "profils/:id" => "profils#destroy"
end
