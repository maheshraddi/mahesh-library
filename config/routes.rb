Rails.application.routes.draw do

   root 'companies#index'
   resources :regions
   resources :locations
   resources :companies
   resources :libraries
   resources :books
   resources :authors
   get '/load_locations', to: 'libraries#load_locations', as: 'load_locations'
end
