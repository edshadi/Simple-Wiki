Simplewiki::Application.routes.draw do
  root :to => 'wiki#show'
  resources :wiki
  resources :wiki_topic
  resources :wiki_page
end
