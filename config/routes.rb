Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/' => 'supports#new', as: :home
  resources :supports

  get '/supports/results' => 'supports#search'
  patch '/supports/:id/toggle_done' => 'supports#toggle_done', as: :toggle_support
end
