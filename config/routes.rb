Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :module do
    namespace :v1 do
      namespace :customers do
        get 'index', to: 'customers#allCustomers'
      end
    end
  end
end
