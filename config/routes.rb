Rails.application.routes.draw do

  get '/404' => 'errors#not_found'
  get '/403' => 'errors#forbidden'
  get '/500' => 'errors#error'

  get 'new' => 'form#new'                     #new form action form
  post 'new' => 'form#create'         #create new form action
  get 'show/:id' => 'form#show'       #form admin section
  get 'delete/:id' => 'form#delete'   #form admin section
  get 'confirm/:id' => 'form#confirm'
  post 'go/:id' => 'form#submit'      #external form submission

  get 'contact' => 'static_pages#contact'
  get 'guide' => 'static_pages#guide'
  get 'legal/terms' => 'static_pages#tos'
  get 'legal/privacy' => 'static_pages#privacy'

  root 'static_pages#home'

end
