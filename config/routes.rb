Rails.application.routes.draw do

  post '/api/v1' => 'tmessages#create'
  get '/act1' => 'volume#index'
  root 'welcome#home'

end
