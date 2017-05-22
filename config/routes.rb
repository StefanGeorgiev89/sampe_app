Rails.application.routes.draw do
  root 'static_pages#home'
  get  '/help',    to: 'static_pages#help', as: 'helf'
  get  '/about',   to: 'static_pages#about'
  get  '/contact', to: 'static_pages#contact'

	# get 'foo/bar'
	# get 'foo/baz'
 #  # get 'static_pages/home'

 #  # get 'static_pages/help'
 #  	root 'application#hello'
 #  	root 'users#index'
 #  # 
 #   	root 'static_pages#home'
	# get  'static_pages/home'
	# get  'static_pages/help'
	# get  'static_pages/about'
	# get  'static_pages/contact'
	# get  'static_pages/book'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
