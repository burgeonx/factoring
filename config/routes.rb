Rails.application.routes.draw do
  
  devise_for :users,
             path: '',
             path_names: {sign_in: 'login', sign_out: 'logout', edit: 'edit', sign_up: 'register'},
             controllers: {registrations: 'registrations'}
  
  authenticated :user do
    root 'dashboards#index', as: :authenticated_root
  end

  root "pages#home"

  get 'line-of-credit' , to: 'pages#line_of_credit'

  get 'invoice-factoring' , to: 'pages#invoice_factoring'

  get 'about' , to: 'pages#about'

  get 'blog' , to: 'pages#blog'

  get 'faq' , to: 'pages#faq'

  get 'client-stories' , to: 'pages#client_stories'

  get 'careers' , to: 'pages#careers'

  get 'partner' , to: 'pages#partner'

  get 'press' , to: 'pages#press'

  get 'pricing' , to: 'pages#pricing'

  get 'how-it-works' , to: 'pages#how_it_works'

  get 'support' , to: 'pages#support'

  get 'privacy' , to: 'pages#privacy'

  get 'terms' , to: 'pages#terms'
  
  resources :contacts, only: [:new, :create]
  
 resources :users, only: [:index, :show] do
    member do
      post '/verify_phone_number' => 'users#verify_phone_number'
      patch '/update_phone_number' => 'users#update_phone_number'
    end
 end

end
