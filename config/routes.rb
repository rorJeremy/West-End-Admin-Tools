Rails.application.routes.draw do
  resources :visitors
  get '/visitors/:id/picture' => 'visitors#picture', as: :visitor_picture
  root :to => redirect('/visitors')
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
