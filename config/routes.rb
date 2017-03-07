Rails.application.routes.draw do
#  get 'top/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "top#index"
  post "login" => "top#login", as: "login"
  get "start" => "top#start", as: "start"
  resources :users do
    collection { get "search"}               # ユーザーの検索
  end
  resource :session, only: [:create, :destroy]
end
