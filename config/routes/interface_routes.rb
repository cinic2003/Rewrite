Rewrite::Application.routes.draw do
  
  # namespace :interface do
  #   resources :scenes
  # end
  
  namespace :interface do
    resources :scenes, :only => {} do
      collection do
        get  :list
        post :add
      end
      
      member do
        post :change
        post :remove
      end
    end
  end
  
end