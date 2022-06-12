Rails.application.routes.draw do
  root to: 'home#top'

  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions: 'users/sessions'
  }
  
  get "/" => "home#top"
  resources :rooms do 
    resources :reservations do
      collection do
        post :confirm
      end
    end
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
