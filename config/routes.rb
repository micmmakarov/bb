Bb::Application.routes.draw do

  scope 'api' do
    resources :images
  end

  root :to => 'home#index'

  match '*path' => 'home#index'

end
