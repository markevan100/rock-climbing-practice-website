Rails.application.routes.draw do

  root to: 'welcome#home'

  get 'welcome/about', to: 'welcome#about'
  get 'welcome/home', to: 'welcome#home'
  get 'welcome/roster', to: 'welcome#roster'

  resources :practices
  resources :contacts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
