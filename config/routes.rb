Rails.application.routes.draw do
  get 'tasks/show'

  get 'tasks/new'

  get 'tasks/edit'

  # get 'pages/about'  = localhost:3000/pages/about 
  get "about", to: "pages#about"
  get "contact", to: "pages#contact"

  get "blog", to: redirect("http://www.google.com")

  # custom route created to localhost:3000/about 
  resources :projects
  root "pages#home"

  get "*path", to: redirect("pages#error")
  
end


# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html