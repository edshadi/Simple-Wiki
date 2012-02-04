Simplewiki::Application.routes.draw do
  root :to => 'wiki#index'
  resources :wiki
  resources :wiki_topic
  resources :wiki_page
end
