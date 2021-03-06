Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "cocktails#index"
  resources :cocktails, only: [:index, :new, :create, :show] do
    resources :doses, only: [:new, :create, :edit]
  end
  resources :doses, only: :destroy
  mount Attachinary::Engine => "/attachinary"
end


