Rails.application.routes.draw do
  devise_for :users

  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :pet_homes, except: :edit do
    resources :bookings, except: %i[index show new edit]
  end
  resources :bookings do
    collection do
      get "my_bookings"
    end

    member do
      patch :approved
      patch :reject
    end
  end
  get "bookings/my_bookings", to: "bookings#my_bookings"
  resources :bookings, only: :destroy
end
