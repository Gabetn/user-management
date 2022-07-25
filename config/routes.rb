Rails.application.routes.draw do
  get 'health/index'

  namespace :api do
    namespace :v1 do
      resources :users, only: [:index, :create] do
        post :delete, on: :collection
        # Assumption: since we're not using id or individual slugs to select a user to delete I opted to use POST as it's not idempotent, and to manually handle the parsing and logic in the controller
      end
    end
  end
end


