Rails.application.routes.draw do
  devise_for :users
  root 'home#index'
 
  get 'home/index'
# get 'home/index' => 'home#index'

  post 'home/create'

  get 'home/new'
  
  get 'home/destroy/:post_id' => 'home#destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
