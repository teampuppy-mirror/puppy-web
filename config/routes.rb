Rails.application.routes.draw do
  

  root 'todo#index'
  get 'todo' => 'todo#index'
  get 'user' => 'user#get_active'
  put 'user' => 'user#update'
  post 'user' => 'user#create'
  delete 'user' => 'user#delete'
  post 'auth' => 'user#authcheck'
  get 'user/likes' => 'user#likes'
  get 'pets' => 'pet#get_all'
  get 'pet/:id' => 'pet#get'
  post 'like' => 'like#add'
  post 'denuncia' => 'report#add'
  get 'auth' => 'todo#index'
  get 'wanteds' => 'todo#index'
  get 'denuncias' => 'todo#index'
  put "user" => 'todo#index'
  get 'web' => 'web_home#display'
  get 'web/login' => 'web_login#display'
  get 'web/pet/:id' => 'web_item#display'
  get 'web/pets' => 'web_lista#display'
  get 'web/sobre' => 'web_static#sobre'
  get 'web/contato' => 'web_static#contato'
  get 'web/protetor' => 'web_static#protetor'

end
