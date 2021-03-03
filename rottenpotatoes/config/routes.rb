Rottenpotatoes::Application.routes.draw do
  match '/movies/:id/similar(.:format)', to: 'movies#similar', as: 'movies_similar', via: :get
  
  resources :movies
  # map '/' to be a redirect to '/movies'
  root :to => redirect('/movies')
end
