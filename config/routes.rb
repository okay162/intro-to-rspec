Rottenpotatoes::Application.routes.draw do
    resources :movies
    # map '/' to be a redirect to '/movies'
		get '/search' => 'movies#search_tmdb', as search_tmdb
		post '/add_movie' => 'movies#add_movie', as add_movie
    root :to => redirect('/movies')
	
  end
  