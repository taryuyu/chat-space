Rails.application.routes.draw do
<<<<<<< Updated upstream
  root "messages#index"
=======
  devise_for :users
  root 'groups#index'
  resources :users, only: [:edit, :update]
  resources :groups, only:[:index, :new, :create, :edit, :update]
>>>>>>> Stashed changes
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
