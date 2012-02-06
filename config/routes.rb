Simplewiki::Application.routes.draw do
  root :to => 'wikis#index'
  resources :wikis
  resources :wiki_topics
  resources :wiki_pages
end
