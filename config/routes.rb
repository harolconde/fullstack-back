Rails.application.routes.draw do
  
  # Usuarios
  namespace :user do
    namespace :v010 do
      resources :usuarios
    end
  end

  # Administradores
  namespace :apiad do
    namespace :v010 do
      resources :admins
    end
  end

  # Coins
  namespace :apico do
    namespace :v010 do
      resources :coins
    end
  end

  # Hashtag
  namespace :apihash do
    namespace :v010 do
      resources :hashtags
    end
  end

  # Pic
  namespace :apipic do
    namespace :v010 do
      resources :pics
    end
  end

  # Prizes
  namespace :apipri do
    namespace :v010 do
      resources :prizes
    end
  end

  # Social_network
  namespace :apisn do
    namespace :v010 do
      resources :social_nets
    end
  end

  # Sponsors
  namespace :apispon do
    namespace :v010 do
      resources :sponsors
    end
  end

  # Tips
  namespace :apitip do
    namespace :v010 do
      resources :tips
    end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
