Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get "registers/index_per_city", to: "registers#index_per_city"
      resources :registers
    end
  end
end
