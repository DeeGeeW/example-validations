Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get "/person/:id" => "staff#show"
  post "/person" => "staff#create"
  # Defines the root path route ("/")
  # root "articles#index"
end
