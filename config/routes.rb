Rails.application.routes.draw do
  #get 'sessions/new'
  get '/login',        to: 'sessions#new'
  post '/login',       to: 'sessions#create'
  delete '/logout',    to: 'sessions#destroy'


  #get 'users/new'
  get  '/signup',  to: 'users#new'
  post '/signup',  to: 'users#create'
  post '/search',  to: 'users#search'
  get '/search',  to: 'users#search'


  resources :users


  #get 'static_pages/home'
  root 'static_pages#home'

#  get 'static_pages/help'
  get  '/help', to: 'static_pages#help'


#  get 'static_pages/about'
  get  '/about', to: 'static_pages#about'

  get  '/contact', to: 'static_pages#contact'



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
