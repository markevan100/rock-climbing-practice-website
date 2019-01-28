Rails.application.routes.draw do

  root to: 'welcome#home'

  get 'welcome/about', to: 'welcome#about'
  get 'welcome/home', to: 'welcome#home'
  get 'welcome/roster', to: 'welcome#roster'
  get 'practices/recent', to: 'practices#recent'

  resources :practices
  resources :contacts
  resources :climbers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
