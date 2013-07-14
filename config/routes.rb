CitizenScience::Application.routes.draw do
  devise_for :users

  root to: 'pages#main'

  get "/about", to: 'pages#about'

  resources :users, except: [:index], shallow: true do
    resource :profile, only: [:show, :edit, :update]
    #TODO: Make this only use path: 'tests' for show, index
    resources :registrations, except: [:new, :create, :show], path: 'metrics'
    resources :registration,  only:   [:show]
    member do
      get 'created_tests'
    end
  end

  resources :metrics, except: [:edit, :update, :destroy], shallow: true do
    resources :registrations, only: [:index, :new, :create]
    resources :questions, except: [:edit, :update, :destroy] do
      post 'submit', on: :member
    end
  end
end
