Rails.application.routes.draw do
 devise_for :users, controllers: { registrations: 'users/registrations', sessions: 'users/sessions', passwords: 'users/passwords'}
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
 resources :messages

 resources :products
 
 #get 'contul_meu', to: "users#edit", as: 'edit_user'

 resources :users, :except => [:index, :show]#, path: 'my/users'#


 resources :orders do
 	resources :order_products#, on: :member
 end
 root 'home#index'
 #get '/test', to: 'users#index'

get '/multumim', to: 'orders#multumim'
 #get '/:tip', to: 'messages#index'

 #development, production, before_action

 #put '/messages/:id/edit' , to: 'messages#update'

 get ':not_found' => redirect('/'), :constraints => { :not_found => /.*/ }


end
