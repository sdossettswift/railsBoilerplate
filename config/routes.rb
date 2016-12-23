Rails.application.routes.draw do

  resources :users
  
  #signin and sign out paths
  get 'sign_in' => 'sessions#new', as: :sign_in
  post 'sign_in' => 'sessions#create'
  delete 'sign_in' => 'sessions#delete', as: :end_session
  get 'sign_out' => 'sessions#delete', as: :sign_out
   

  root 'home#hello'
end
