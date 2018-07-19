Rails.application.routes.draw do
  
  root 'contacts#new'

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

end
