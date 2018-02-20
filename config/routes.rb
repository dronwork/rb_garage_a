Rails.application.routes.draw do

  resources :projects do
    resources :tasks, except: [ :index ]
  end

  devise_for :users
  root 'projects#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
