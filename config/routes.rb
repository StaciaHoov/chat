Rails.application.routes.draw do
  devise_for :users
  
  resources :chatrooms do 
    resource :chatroom_users # join table model allows single user to join and leave chatroom. Singular resource
  end

  root to: "chatrooms#index"
end
