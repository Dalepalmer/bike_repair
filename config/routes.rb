Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'auth', skip: [:omniauth_callbacks]
  as :user do
    # Define routes for user within this block.
  end

  root to: "home#index"
end
