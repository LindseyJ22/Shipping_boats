Rails.application.routes.draw do
  


  get 'home/index'

  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions: 'users/sessions'
  }
  resources :job_boats, only: [:create, :destroy]
  resources :users, only: [:index, :show]
  resources :boats
  resources :jobs
	root "home#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
