Codebrahma::Application.routes.draw do
  resources :feeds
  resources :users
  resources :relationships, only: [:show,:create, :destroy]
  
  root :to => 'home#index'
  
  match 'auth/:provider/callback', to: 'sessions#create'
  match 'auth/failure', to: redirect('/')
  match 'signout', to: 'sessions#destroy', as: 'signout'
  match '/feed', to: 'home#feed'
  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
