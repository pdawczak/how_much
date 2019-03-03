Rails.application.routes.draw do
  resources :submissions
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "home#index"

  resources :submissions do
    member do
      get "calculate"
      patch "was_correct"
    end
  end
end
