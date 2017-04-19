Rails.application.routes.draw do
  resources :office_galleries
  resources :student_galleries
  get 'admin/index'

  devise_for :users 
  devise_scope :user do
  	get 'login', to: 'devise/sessions#new'
end
  resources :posts
 root 'posts#index'
 



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
