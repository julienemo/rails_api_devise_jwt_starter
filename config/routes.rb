Rails.application.routes.draw do
  devise_for :users,
             path: '',
             path_names: {
               sign_in: 'sign_in',
               sign_out: 'sign_out',
               registration: 'sign_up'
             },
             controllers: {
               sessions: 'sessions',
               registrations: 'registrations'
             }
  resources :users, except: [:create, :destroy]

  namespace 'api' do
    namespace 'v1' do
      get '/profile' => 'profiles#index'
      delete '/profile' => 'profiles#destroy'
      patch '/profile' => 'profiles#update'
      put '/profile' => 'profiles#update'
    end
  end
end
