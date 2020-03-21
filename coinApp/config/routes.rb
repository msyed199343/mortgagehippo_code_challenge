Rails.application.routes.draw do
  
    resources :coins, except: [:create, :destroy]
    delete 'coins/:id/withdraw', to: 'coins#destroy'
    post 'coins/deposit', to: 'coins#create'
    get '/total', to: 'coins#available'

   
  
  
 



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  

  
  
end
