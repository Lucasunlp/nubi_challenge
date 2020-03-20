Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :teachers
      resources :alumns, only: %w[index show] do
        collection do
          # get 'airlines'
          # get 'destinations'
        end
      end
    end
  end
end
