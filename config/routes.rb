Rails.application.routes.draw do


  devise_for :users
  # get 'pages/about'  = localhost:3000/pages/about 
  get "about", to: "pages#about"
  get "contact", to: "pages#contact"

  get "blog", to: redirect("https://www.austenstaski-taski.herokuapp.com")

  # custom route created to localhost:3000/about 
  resources :projects do
    resources :tasks, except: [:index], controller: 'projects/tasks'
  end

  root "pages#home"

  get "*path", to: redirect("pages#error")
  
end


# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
