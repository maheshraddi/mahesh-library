Rails.application.routes.draw do

   root 'companies#index'
   resources :regions
   resources :locations
   resources :companies
   resources :libraries
   resources :books
   resources :authors
end
