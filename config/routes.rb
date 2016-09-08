Rails.application.routes.draw do
  get 'static_pages/about'

  get 'static_pages/contact'

  get 'static_pages/index'
  get 'static_pages/about'
  get 'static_pages/contact'
  devise_for :users, :path => '', :path_names => {:sign_in => 'login', :sign_out => 'logout'}
  resources :users
  root 'static_pages#index'
  #root to: "home#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
