Rails.application.routes.draw do
  namespace :api do

    post "/login" => "sessions#create"

    get "/users" => "users#index"
    post "/users" => "users#create"
    get "/users/:id" => "users#show"
    patch "/users/:id" => "users#update"
    delete "/users/:id" => "users#destroy"

    get "/walls" => "walls#index"
    post "/walls" => "walls#create"
    get "/walls/:id" => "walls#show"
    patch "/walls/:id" => "walls#update"
    delete "/walls/:id" => "walls#destroy"

    get "/art_pieces" => "art_pieces#index"
    post "/art_pieces" => "art_pieces#create"
    get "/art_pieces/:id" => "art_pieces#show"
    patch "/art_pieces/:id" => "art_pieces#update"
    delete "/art_pieces/:id" => "art_pieces#destroy"

    post "/user_walls" => "user_walls#create"

  end
end
