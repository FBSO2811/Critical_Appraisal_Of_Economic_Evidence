Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :projects do
    member do
      get "replies_project"
      get "project_download"
    end
    resources :papers do
      resources :questions do
        collection do
          get 'replies'
          get "paper_download"
        end
      end
    end
  end

  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

# resources :questions do
#   collection do
#     get 'replies'
#   end
# end
