Wineapp::Application.routes.draw do
  
  resources :wineries do
    resources :wines
  end

  root :to => 'wineries#index'

  get "/wines" => 'wines#all'
  # Is there a way to do this through wines#index?

end
