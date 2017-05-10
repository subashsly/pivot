Rails.application.routes.draw do
  resources :office_galleries
  resources :student_galleries
  get 'admin/index'

    devise_for :users, controllers: {
        sessions: 'users/sessions'
      }

  # devise_for :users 
  devise_scope :user do
  	get 'login', to: 'devise/sessions#new'
    put 'users' => 'devise/registrations#update', as: 'user_registration'
  get 'users/edit' => 'devise/registrations#edit', as: 'edit_user_registration'
  delete 'users' => 'devise/registrations#destroy', as: 'registration'
  	# get 'login', to: 'student_galleries#index'
  	
end
  resources :posts
 root 'posts#index'
 



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
