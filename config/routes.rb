Rails.application.routes.draw do
  devise_for :users

  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :pet_homes do
    resources :bookings, except: %i[index show new]
  end
  resources :bookings, only: :destroy
end
