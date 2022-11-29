Rails.application.routes.draw do
  devise_for :users

  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :pet_homes do
    resources :booking, except: :index
  end
  resources :booking, only: :destroy
end
