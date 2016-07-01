Rails.application.routes.draw do
  get 'home/index'

  root 'home#index'

  devise_for :users, :controllers => { sessions: 'users/sessions',
                                                              registrations: 'users/registrations' }

  get '*unmatched_route', to: 'home#index'

end
