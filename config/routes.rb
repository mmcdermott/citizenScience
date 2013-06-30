CitizenScience::Application.routes.draw do
  resources :users, except: [:index], shallow: true do
    resource :profile, only: [:show, :edit, :update]
    resources :registrations, except: [:new, :create], path: 'tests'
    member do
      get 'created_tests'
    end
  end

  resources :tests, except: [:edit, :update, :destroy], shallow: true do
    resources :registrations, only: [:index, :new, :create]
    resources :questions, except: [:edit, :update, :destroy] do
      get 'submit', on: :member
    end
  end
end
